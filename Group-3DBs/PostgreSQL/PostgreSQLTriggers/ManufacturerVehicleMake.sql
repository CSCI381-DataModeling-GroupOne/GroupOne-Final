
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."ManufacturerVehicleMakeHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleMakeName", "ManufacturerVehicleMakeID", "CountryID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleMakeName", OLD."ManufacturerVehicleMakeID", OLD."CountryID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_ManufacturerVehicleMake
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM "Inventory"."ManufacturerVehicleMake" WHERE NEW."ManufacturerVehicleMakeID" = OLD."ManufacturerVehicleMakeID";
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleMakeHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleMakeName", "ManufacturerVehicleMakeID", "CountryID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleMakeName", OLD."ManufacturerVehicleMakeID", OLD."CountryID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleMake
    AFTER DELETE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_delete();
    
