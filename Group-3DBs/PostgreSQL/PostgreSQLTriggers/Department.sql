
CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."DepartmentHistory" ("TriggerOption", "Notes", "IsDeleted", "DepartmentId", "Department", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, "OLD.DepartmentId", "OLD.Department", "OLD.SysStartTime", "OLD.SysEndTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Department
    AFTER DELETE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_update();
    

CREATE OR REPLACE FUNCTION log_Department_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM HumanResources.Department WHERE NEW.DepartmentId = OLD.DepartmentId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."DepartmentHistory" ("TriggerOption", "Notes", "IsDeleted", "DepartmentId", "Department", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, "OLD.DepartmentId", "OLD.Department", "OLD.SysStartTime", "OLD.SysEndTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Department
    AFTER UPDATE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_delete();
    
