
CREATE OR REPLACE FUNCTION log_Customer_update() RETURNS TRIGGER AS $Customer_audit$
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

        UPDATE Sales.Customer
        SET CustomerId = NEW.CustomerId,
            CustomerName = NEW.CustomerName,
            CustomerAddress = NEW.CustomerAddress,
            CustomerExpenditureClassificationID = NEW.CustomerExpenditureClassificationID,
            IsCustomerCreditRisk = NEW.IsCustomerCreditRisk,
            IsCustomerReseller = NEW.IsCustomerReseller,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;
        
        INSERT INTO Audit.CustomerHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Customer
    BEFORE UPDATE ON Sales.Customer
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_update();


CREATE OR REPLACE FUNCTION log_Customer_delete() RETURNS TRIGGER AS $Customer_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.Customer WHERE NEW.CustomerId = OLD.CustomerId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO CustomerHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Customer
    AFTER DELETE ON Sales.Customer
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_delete();
    

