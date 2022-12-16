
CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $$
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

        UPDATE HumanResources.Department
        SET DepartmentId = NEW.DepartmentId,
            Department = NEW.Department,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.DepartmentHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Department
    AFTER DELETE ON HumanResources.Department
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_update();
    

CREATE OR REPLACE FUNCTION log_Department_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM HumanResources.Department WHERE NEW.DepartmentId = OLD.DepartmentId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.DepartmentHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Department
    AFTER UPDATE ON HumanResources.Department
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_delete();
    
