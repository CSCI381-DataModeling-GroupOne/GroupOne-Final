
CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --

        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
        INSERT INTO "Audit"."StaffHistory" ("TriggerOption", "Notes", "IsDeleted", "StaffID", "StaffName", "StaffEmail", "Salary", "DepartmentID", "ManagerID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('U', 'Row was updated', FALSE, OLD."StaffID", OLD."StaffName", OLD."StaffEmail", OLD."Salary", OLD."DepartmentID", OLD."ManagerID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Staff
    BEFORE UPDATE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_update();
    

CREATE OR REPLACE FUNCTION log_Staff_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM "HumanResources"."Staff" WHERE NEW."StaffID" = OLD."StaffID";
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."StaffHistory" ("TriggerOption", "Notes", "IsDeleted", "StaffID", "StaffName", "StaffEmail", "Salary", "DepartmentID", "ManagerID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('D', 'Row was deleted', TRUE, OLD."StaffID", OLD."StaffName", OLD."StaffEmail", OLD."Salary", OLD."DepartmentID", OLD."ManagerID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Staff
    AFTER DELETE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_delete();
    
