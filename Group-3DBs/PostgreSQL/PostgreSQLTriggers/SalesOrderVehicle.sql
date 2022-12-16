
CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_update() RETURNS TRIGGER AS $$
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

        UPDATE Sales.SalesOrderVehicle
        SET SalesOrderVehicleID = NEW.SalesOrderVehicleID,
            InvoiceNumber = NEW.InvoiceNumber,
            SaleDate = NEW.SaleDate,
            CustomerID = NEW.CustomerID,
            StaffID = NEW.StaffID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.SalesOrderVehicleHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_SalesOrderVehicle
    BEFORE UPDATE ON Sales.SalesOrderVehicle
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_delete() RETURNS TRIGGER AS $SalesOrderVehicle_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleID = OLD.SalesOrderVehicleID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.SalesOrderVehicleHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_SalesOrderVehicle
    AFTER DELETE ON Sales.SalesOrderVehicle
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_delete();
    
