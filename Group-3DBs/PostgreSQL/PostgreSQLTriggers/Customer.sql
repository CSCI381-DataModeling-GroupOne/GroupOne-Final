
CREATE OR REPLACE FUNCTION log_Customer_update() RETURNS TRIGGER AS $Customer_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM Sales.Customer WHERE NEW.CustomerId = OLD.CustomerId;
            IF NOT FOUND THEN RETURN NULL; END IF;

            OLD.SysEndTime = CURRENT_TIME;
            INSERT INTO CustomerHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            NEW.TransactionNumber = OLD.TransactionNumber + 1;
            NEW.SysStartTime = CURRENT_TIME;   
            NEW.SysEndTime = MAX_DATETIME;

            UPDATE Sales.Customer
            SET CustomerId = NEW.CustomerId
            SET CustomerName = NEW.CustomerName
            SET CustomerAddress = NEW.CustomerAddress
            SET CustomerExpenditureClassificationID = NEW.CustomerExpenditureClassificationID
            SET IsCustomerCreditRisk = NEW.IsCustomerCreditRisk
            SET IsCustomerReseller = NEW.IsCustomerReseller
            SET SysStartTime = NEW.SysStartTime
            SET SysEndTime = NEW.SysEndTime
            SET UserAuthorizationId = NEW.UserAuthorizationId
            SET TransactionNumber = NEW.TransactionNumber
            IF NOT FOUND THEN RETURN NULL; END IF;
            
            INSERT INTO Audit.CustomerHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
            RETURN NEW;

        END IF;
    END;
$Customer_audit$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_Customer
    INSTEAD OF DELETE OR UPDATE ON Sales.Customer
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_update();
    
