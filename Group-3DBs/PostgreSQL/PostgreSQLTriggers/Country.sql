
CREATE OR REPLACE FUNCTION log_Country_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
        INSERT INTO "Audit"."CountryHistory" ("TriggerOption", "Notes", "IsDeleted", "CountryID", "CountryName", "CountryISO3", "CountryISO2", "SalesRegion", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."CountryID", OLD."CountryName", OLD."CountryISO3", OLD."CountryISO2", OLD."SalesRegion", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Country
    BEFORE UPDATE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_update();


CREATE OR REPLACE FUNCTION log_Country_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.Country WHERE CountryId = OLD.CountryId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."CountryHistory" ("TriggerOption", "Notes", "IsDeleted", "CountryID", "CountryName", "CountryISO3", "CountryISO2", "SalesRegion", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."CountryID", OLD."CountryName", OLD."CountryISO3", OLD."CountryISO2", OLD."SalesRegion", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_Country
    AFTER DELETE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_delete();
    
