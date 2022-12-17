
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        INSERT INTO "Audit"."ManufacturerVehicleModelHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleModelID", "ManufacturerModelName", "ManufacturerModelVariant", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleModelID", OLD."ManufacturerModelName", OLD."ManufacturerModelVariant", OLD."SysEndTime", OLD."SysStartTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber"); 
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_ManufacturerVehicleModel
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM "Inventory"."ManufacturerVehicleModel" WHERE NEW."ManufacturerVehicleModelID" = OLD."ManufacturerVehicleModelID";
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleModelHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleModelID", "ManufacturerModelName", "ManufacturerModelVariant", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleModelID", OLD."ManufacturerModelName", OLD."ManufacturerModelVariant", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber"); 
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleModel
    AFTER DELETE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_delete();
    
