
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        INSERT INTO "Audit"."ManufacturerVehicleStockHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleStockID", "ManufacturerVehicleModelID", "StockCode", "Cost", "DeliveryCharge", "PartsCharge", "PurchaseDate", "RepairsCharge", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleStockID", OLD."ManufacturerVehicleModelID", OLD."StockCode", OLD."Cost", OLD."DeliveryCharge", OLD."PartsCharge", OLD."PurchaseDate", OLD."RepairsCharge", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");        
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_ManufacturerVehicleStock
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM "Inventory"."ManufacturerVehicleStock" WHERE NEW."ManufacturerVehicleStockID" = OLD."ManufacturerVehicleStockID";
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleStockHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleStockID", "ManufacturerVehicleModelID", "StockCode", "Cost", "DeliveryCharge", "PartsCharge", "PurchaseDate", "RepairsCharge", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleStockID", OLD."ManufacturerVehicleModelID", OLD."StockCode", OLD."Cost", OLD."DeliveryCharge", OLD."PartsCharge", OLD."PurchaseDate", OLD."RepairsCharge", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");        
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleStock
    AFTER DELETE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_delete();
    

