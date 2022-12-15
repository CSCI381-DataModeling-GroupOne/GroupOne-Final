
CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_update() RETURNS TRIGGER AS $SalesOrderVehicleDetail_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleDetailID = OLD.SalesOrderVehicleDetailID;
            IF NOT FOUND THEN RETURN NULL; END IF;

            OLD.SysEndTime = CURRENT_TIME;
            INSERT INTO Audit.SalesOrderVehicleDetailHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            NEW.TransactionNumber = OLD.TransactionNumber + 1;
            NEW.SysStartTime = CURRENT_TIME;   
            NEW.SysEndTime = MAX_DATETIME;

            UPDATE Sales.SalesOrderVehicleDetail
            SET SalesOrderVehicleDetailID = NEW.SalesOrderVehicleDetailID
            SET ManufacturerVehicleStockID = NEW.ManufacturerVehicleStockID
            SET SalesOrderVehicleID = NEW.SalesOrderVehicleID
            SET SalePrice = NEW.SalePrice
            SET LineItemNumber = NEW.LineItemNumber
            SET LineItemDiscount = NEW.LineItemDiscount
            SET DerivedDiscountedSalePrice = NEW.DerivedDiscountedSalePrice
            SET StockCode = NEW.StockCode
            SET StaffID = NEW.StaffID
            SET SysEndTime = NEW.SysEndTime
            SET SysStartTime = NEW.SysStartTime
            SET UserAuthorizationId = NEW.UserAuthorizationId
            SET TransactionNumber = NEW.TransactionNumber
            IF NOT FOUND THEN RETURN NULL; END IF;            
            
            INSERT INTO Audit.SalesOrderVehicleDetailHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
            RETURN NEW;

        END IF;
    END;
$SalesOrderVehicleDetail_audit$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_SalesOrderVehicleDetail
    INSTEAD OF DELETE OR UPDATE ON Sales.SalesOrderVehicleDetail
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_update();
    
