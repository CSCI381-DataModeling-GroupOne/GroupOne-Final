
CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Sales.SalesOrderVehicleDetail
        SET SalesOrderVehicleDetailID = NEW.SalesOrderVehicleDetailID,
            ManufacturerVehicleStockID = NEW.ManufacturerVehicleStockID,
            SalesOrderVehicleID = NEW.SalesOrderVehicleID,
            SalePrice = NEW.SalePrice,
            LineItemNumber = NEW.LineItemNumber,
            LineItemDiscount = NEW.LineItemDiscount,
            DerivedDiscountedSalePrice = NEW.DerivedDiscountedSalePrice,
            StockCode = NEW.StockCode,
            StaffID = NEW.StaffID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.ManufacturerVehicleMakeHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_SalesOrderVehicleDetail
    BEFORE UPDATE ON Sales.SalesOrderVehicleDetail
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleDetailID = OLD.SalesOrderVehicleDetailID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.SalesOrderVehicleDetailHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_SalesOrderVehicleDetail
    AFTER DELETE ON Sales.SalesOrderVehicleDetail
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_delete();
    
