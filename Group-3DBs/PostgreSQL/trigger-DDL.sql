

-------PARENT TABLE TRIGGERS ----------------
CREATE OR REPLACE FUNCTION log_Customer_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
        INSERT INTO "Audit"."CustomerHistory" ("TriggerOption", "Notes", "IsDeleted", "CustomerId", "CustomerName", "CustomerAddress", "CustomerExpenditureClassificationID", "IsCustomerCreditRisk", "IsCustomerReseller", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('U', 'Row was updated', FALSE, OLD."CustomerId", OLD."CustomerName", OLD."CustomerAddress", OLD."CustomerExpenditureClassificationID", OLD."IsCustomerCreditRisk", OLD."IsCustomerReseller", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER uTu_Customer
    BEFORE UPDATE ON "Sales"."Customer"
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_update();


CREATE OR REPLACE FUNCTION log_Customer_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."CustomerHistory" ("TriggerOption", "Notes", "IsDeleted", "CustomerId", "CustomerName", "CustomerAddress", "CustomerExpenditureClassificationID", "IsCustomerCreditRisk", "IsCustomerReseller", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('D', 'Row was deleted', TRUE, OLD."CustomerId", OLD."CustomerName", OLD."CustomerAddress", OLD."CustomerExpenditureClassificationID", OLD."IsCustomerCreditRisk", OLD."IsCustomerReseller", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER uTd_Customer
BEFORE DELETE ON "Sales"."Customer"
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_delete();
   
CREATE OR REPLACE FUNCTION log_Country_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
        INSERT INTO "Audit"."CountryHistory" ("TriggerOption", "Notes", "IsDeleted", "CountryID", "CountryName", "CountryISO3", "CountryISO2", "SalesRegion", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."CountryID", OLD."CountryName", OLD."CountryISO3", OLD."CountryISO2", OLD."SalesRegion", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER uTu_Country
    BEFORE UPDATE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_update();


CREATE OR REPLACE FUNCTION log_Country_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."CountryHistory" ("TriggerOption", "Notes", "IsDeleted", "CountryID", "CountryName", "CountryISO3", "CountryISO2", "SalesRegion", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."CountryID", OLD."CountryName", OLD."CountryISO3", OLD."CountryISO2", OLD."SalesRegion", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER uTd_Country
    BEFORE DELETE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_delete();
   

CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."DepartmentHistory" ("TriggerOption", "Notes", "IsDeleted", "DepartmentID", "DepartmentName", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."DepartmentID", OLD."DepartmentName", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_Department
    BEFORE UPDATE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_update();
    

CREATE OR REPLACE FUNCTION log_Department_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."DepartmentHistory" ("TriggerOption", "Notes", "IsDeleted", "DepartmentId", "DepartmentName", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."DepartmentId", OLD."DepartmentName", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER uTd_Department
    BEFORE DELETE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_delete();
   
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."ManufacturerVehicleMakeHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleMakeName", "ManufacturerVehicleMakeID", "CountryID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleMakeName", OLD."ManufacturerVehicleMakeID", OLD."CountryID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_ManufacturerVehicleMake
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleMakeHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleMakeName", "ManufacturerVehicleMakeID", "CountryID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleMakeName", OLD."ManufacturerVehicleMakeID", OLD."CountryID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_ManufacturerVehicleMake
    BEFORE DELETE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_delete();
   
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        INSERT INTO "Audit"."ManufacturerVehicleModelHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleModelID", "ManufacturerModelName", "ManufacturerModelVariant", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleModelID", OLD."ManufacturerModelName", OLD."ManufacturerModelVariant", OLD."SysEndTime", OLD."SysStartTime", "OLD.UserAuthorizationId", "OLD.TransactionNumber"); 
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTdu_ManufacturerVehicleModel
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD.SysEndTime = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleModelHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleModelID", "ManufacturerModelName", "ManufacturerModelVariant", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleModelID", OLD."ManufacturerModelName", OLD."ManufacturerModelVariant", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber"); 
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_ManufacturerVehicleModel
    BEFORE DELETE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_delete();
    
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        INSERT INTO "Audit"."ManufacturerVehicleStockHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleStockID", "ManufacturerVehicleModelID", "StockCode", "Cost", "DeliveryCharge", "PartsCharge", "PurchaseDate", "RepairsCharge", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."ManufacturerVehicleStockID", OLD."ManufacturerVehicleModelID", OLD."StockCode", OLD."Cost", OLD."DeliveryCharge", OLD."PartsCharge", OLD."PurchaseDate", OLD."RepairsCharge", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");        
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_ManufacturerVehicleStock
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."ManufacturerVehicleStockHistory" ("TriggerOption", "Notes", "IsDeleted", "ManufacturerVehicleStockID", "ManufacturerVehicleModelID", "StockCode", "Cost", "DeliveryCharge", "PartsCharge", "PurchaseDate", "RepairsCharge", "SysStartTime", "SysEndTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."ManufacturerVehicleStockID", OLD."ManufacturerVehicleModelID", OLD."StockCode", OLD."Cost", OLD."DeliveryCharge", OLD."PartsCharge", OLD."PurchaseDate", OLD."RepairsCharge", OLD."SysStartTime", OLD."SysEndTime", OLD."UserAuthorizationId", OLD."TransactionNumber");        
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_ManufacturerVehicleStock
    BEFORE DELETE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_delete();

CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        INSERT INTO "Audit"."SalesOrderVehicleHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleID", "InvoiceNumber", "SaleDate", "CustomerID", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('U', 'Row was updated', FALSE, OLD."SalesOrderVehicleID", OLD."InvoiceNumber", OLD."SaleDate", OLD."CustomerID", OLD."StaffID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_SalesOrderVehicle
    BEFORE UPDATE ON "Sales"."SalesOrderVehicle"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."SalesOrderVehicleHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleID", "InvoiceNumber", "SaleDate", "CustomerID", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('D', 'Row was deleted', TRUE, OLD."SalesOrderVehicleID", OLD."InvoiceNumber", OLD."SaleDate", OLD."CustomerID", OLD."StaffID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_SalesOrderVehicle
    BEFORE DELETE ON "Sales"."SalesOrderVehicle"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_delete();
    
CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
            
        INSERT INTO "Audit"."SalesOrderVehicleDetailHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleDetailID", "ManufacturerVehicleStockID", "SalesOrderVehicleID", "SalePrice", "LineItemNumber", "LineItemDiscount", "DerivedDiscountedSalePrice", "StockCode", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('U', 'Row was updated', FALSE, OLD."SalesOrderVehicleDetailID", OLD."ManufacturerVehicleStockID", OLD."SalesOrderVehicleID", OLD."SalePrice", OLD."LineItemNumber", OLD."LineItemDiscount", OLD."DerivedDiscountedSalePrice", OLD."StockCode", OLD."StaffID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_SalesOrderVehicleDetail
    BEFORE UPDATE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."SalesOrderVehicleDetailHistory" ("TriggerOption", "Notes", "IsDeleted", "SalesOrderVehicleDetailID", "ManufacturerVehicleStockID", "SalesOrderVehicleID", "SalePrice", "LineItemNumber", "LineItemDiscount", "DerivedDiscountedSalePrice", "StockCode", "StaffID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber") 
        VALUES ('D', 'Row was deleted', TRUE, OLD."SalesOrderVehicleDetailID", OLD."ManufacturerVehicleStockID", OLD."SalesOrderVehicleID", OLD."SalePrice", OLD."LineItemNumber", OLD."LineItemDiscount", OLD."DerivedDiscountedSalePrice", OLD."StockCode", OLD."StaffID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_SalesOrderVehicleDetail
    BEFORE DELETE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_delete();
    
CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
    BEGIN
        NEW."TransactionNumber" = (OLD."TransactionNumber") + 1;
        NEW."SysStartTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        NEW."SysEndTime" = to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
        INSERT INTO "Audit"."StaffHistory" ("TriggerOption", "Notes", "IsDeleted", "StaffID", "StaffName", "StaffEmail", "Salary", "DepartmentName", "ManagerID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('U', 'Row was updated', FALSE, OLD."StaffID", OLD."StaffName", OLD."StaffEmail", OLD."Salary", OLD."DepartmentName", OLD."ManagerID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTu_Staff
    BEFORE UPDATE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_update();
    

CREATE OR REPLACE FUNCTION log_Staff_delete() RETURNS TRIGGER AS $$
    BEGIN
        OLD."SysEndTime" = to_timestamp(NOW()::text, 'YYYY-MM-DD HH24:MI:SS');
        INSERT INTO "Audit"."StaffHistory" ("TriggerOption", "Notes", "IsDeleted", "StaffID", "StaffName", "StaffEmail", "Salary", "DepartmentID", "ManagerID", "SysEndTime", "SysStartTime", "UserAuthorizationId", "TransactionNumber")
        VALUES ('D', 'Row was deleted', TRUE, OLD."StaffID", OLD."StaffName", OLD."StaffEmail", OLD."Salary", OLD."DepartmentID", OLD."ManagerID", OLD."SysEndTime", OLD."SysStartTime", OLD."UserAuthorizationId", OLD."TransactionNumber");
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER uTd_Staff
    BEFORE DELETE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_delete();
    
   
------ AUDIT TABLE TRIGGERS -----------
create or replace function deny_change_CountryHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_CountryHistory 
  before update or delete on "Audit"."CountryHistory" 
  for each statement 
  execute function deny_change_CountryHistory(); 
 
create or replace function deny_change_CustomerHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_CustomerHistory 
  before update or delete on "Audit"."CustomerHistory" 
  for each statement 
  execute function deny_change_CustomerHistory(); 

create or replace function deny_change_DepartmentHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_DepartmentHistory 
  before update or delete on "Audit"."DepartmentHistory" 
  for each statement 
  execute function deny_change_DepartmentHistory(); 

create or replace function deny_change_ManufacturerVehicleMakeHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_ManufacturerVehicleMakeHistory 
  before update or delete on "Audit"."ManufacturerVehicleMakeHistory" 
  for each statement 
  execute function deny_change_ManufacturerVehicleMakeHistory(); 

create or replace function deny_change_ManufacturerVehicleModelHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_ManufacturerVehicleModelHistory 
  before update or delete on "Audit"."ManufacturerVehicleModelHistory" 
  for each statement 
  execute function deny_change_ManufacturerVehicleModelHistory(); 

create or replace function deny_change_ManufacturerVehicleStockHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_ManufacturerVehicleStockHistory 
  before update or delete on "Audit"."ManufacturerVehicleStockHistory" 
  for each statement 
  execute function deny_change_ManufacturerVehicleStockHistory(); 

create or replace function deny_change_SalesOrderVehicleDetailHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_SalesOrderVehicleDetailHistory 
  before update or delete on "Audit"."SalesOrderVehicleDetailHistory" 
  for each statement 
  execute function deny_change_SalesOrderVehicleDetailHistory(); 

create or replace function deny_change_SalesOrderVehicleHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_SalesOrderVehicleHistory 
  before update or delete on "Audit"."SalesOrderVehicleHistory" 
  for each statement 
  execute function deny_change_SalesOrderVehicleHistory(); 
