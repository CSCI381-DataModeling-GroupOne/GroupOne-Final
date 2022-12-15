
CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $Department_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM HumanResources.Department WHERE NEW.DepartmentId = OLD.DepartmentId;
            IF NOT FOUND THEN RETURN NULL; END IF;

            OLD.SysEndTime = CURRENT_TIME;
            INSERT INTO Audit.DepartmentHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            NEW.TransactionNumber = OLD.TransactionNumber + 1;
            NEW.SysStartTime = CURRENT_TIME;   
            NEW.SysEndTime = MAX_DATETIME;

            UPDATE HumanResources.Department
            SET DepartmentId = NEW.DepartmentId
            SET Department = NEW.Department
            SET SysStartTime = NEW.SysStartTime
            SET SysEndTime = NEW.SysEndTime
            SET UserAuthorizationId = NEW.UserAuthorizationId
            SET TransactionNumber = NEW.TransactionNumber
            IF NOT FOUND THEN RETURN NULL; END IF;            
            
            INSERT INTO Audit.DepartmentHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
            RETURN NEW;

        END IF;
    END;
$Department_audit$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_Department
    AFTER UPDATE ON HumanResources.Department
    FOR EACH ROW
    WHEN (OLD.* IS DISTINCT FROM NEW.*)
    EXECUTE FUNCTION log_Department_update();
    
