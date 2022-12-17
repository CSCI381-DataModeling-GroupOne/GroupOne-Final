
CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_update() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."SalesOrderVehicleDetailHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleDetailID", "ManufacturerVehicleStockID", "SalesOrderVehicleID", "SalePrice", "LineItemNumber", "LineItemDiscount", "DerivedDiscountedSalePrice", "StockCode", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, "OLD.SalesOrderVehicleDetailID", "OLD.ManufacturerVehicleStockID", "OLD.SalesOrderVehicleID", "OLD.SalePrice", "OLD.LineItemNumber", "OLD.LineItemDiscount", "OLD.DerivedDiscountedSalePrice", "OLD.StockCode", "OLD.StaffID", "OLD.SysEndTime", "OLD.SysStartTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_SalesOrderVehicleDetail
    BEFORE UPDATE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_delete() RETURNS TRIGGER AS $$
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleDetailID = OLD.SalesOrderVehicleDetailID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."SalesOrderVehicleDetailHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleDetailID", "ManufacturerVehicleStockID", "SalesOrderVehicleID", "SalePrice", "LineItemNumber", "LineItemDiscount", "DerivedDiscountedSalePrice", "StockCode", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, "OLD.SalesOrderVehicleDetailID", "OLD.ManufacturerVehicleStockID", "OLD.SalesOrderVehicleID", "OLD.SalePrice", "OLD.LineItemNumber", "OLD.LineItemDiscount", "OLD.DerivedDiscountedSalePrice", "OLD.StockCode", "OLD.StaffID", "OLD.SysEndTime", "OLD.SysStartTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_SalesOrderVehicleDetail
    AFTER DELETE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_delete();
    
