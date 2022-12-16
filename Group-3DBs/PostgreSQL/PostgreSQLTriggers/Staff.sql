
CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
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

        UPDATE HumanResources.Staff
        SET StaffID = NEW.StaffID,
            StaffName = NEW.StaffName,
            StaffEmail = NEW.StaffEmail,
            Salary = NEW.Salary,
            DepartmentID = NEW.DepartmentID,
            ManagerID = NEW.ManagerID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.StaffHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Staff
    BEFORE UPDATE ON HumanResources.Staff
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_update();
    

CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM HumanResources.Staff WHERE NEW.StaffID = OLD.StaffID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.StaffHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Staff
    AFTER DELETE ON HumanResources.Staff
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_delete();
    
