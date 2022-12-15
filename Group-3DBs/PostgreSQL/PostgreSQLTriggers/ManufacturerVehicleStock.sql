
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_update() RETURNS TRIGGER AS $ManufacturerVehicleStock_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM Customer WHERE NEW.ManufacturerVehicleStockID = OLD.ManufacturerVehicleStockID;
            IF NOT FOUND THEN RETURN NULL; END IF;

            OLD.SysEndTime = CURRENT_TIME;
            INSERT INTO Audit.ManufacturerVehicleStockHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            NEW.TransactionNumber = OLD.TransactionNumber + 1;
            NEW.SysStartTime = CURRENT_TIME;   
            NEW.SysEndTime = MAX_DATETIME;

            UPDATE Inventory.ManufacturerVehicleStock
            SET ManufacturerVehicleStockID = NEW.ManufacturerVehicleStockID
            SET ManufacturerVehicleModelID = NEW.ManufacturerVehicleModelID
            SET StockCode = NEW.StockCode
            SET Cost = NEW.Cost
            SET DeliveryCharge = NEW.DeliveryCharge
            SET PartsCharge = NEW.PartsCharge
            SET PurchaseDate = NEW.PurchaseDate
            SET RepairsCharge = NEW.RepairsCharge
            SET SysStartTime = NEW.SysStartTime
            SET SysEndTime = NEW.SysEndTime
            SET UserAuthorizationId = NEW.UserAuthorizationId
            SET TransactionNumber = NEW.TransactionNumber
            IF NOT FOUND THEN RETURN NULL; END IF;            
            
            INSERT INTO Audit.ManufacturerVehicleStockHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
            RETURN NEW;

        END IF;
    END;
$ManufacturerVehicleStock_audit$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_ManufacturerVehicleStock
    INSTEAD OF DELETE OR UPDATE ON Inventory.ManufacturerVehicleStock
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_update();
    
