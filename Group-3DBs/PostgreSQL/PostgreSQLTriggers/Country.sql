
CREATE OR REPLACE FUNCTION log_Country_update() RETURNS TRIGGER AS $Country_audit$
    DECLARE
        CURRENT_TIME timestamp := now()
        MAX_DATETIME timestamp := '9999-12-31 23:59:59'  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM Sales.Country WHERE CountryId = OLD.CountryId;
            IF NOT FOUND THEN RETURN NULL; END IF;

            OLD.SysEndTime = CURRENT_TIME;
            INSERT INTO Audit.CountryHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            NEW.TransactionNumber = OLD.TransactionNumber + 1;
            NEW.SysStartTime = CURRENT_TIME;   
            NEW.SysEndTime = MAX_DATETIME;

            UPDATE Sales.Country 
            SET CountryID = NEW.CountryID
            SET CountryName = NEW.CountryName
            SET CountryISO3 = NEW.CountryISO3
            SET CountryISO2 = NEW.CountryISO2
            SET SalesRegion = NEW.SalesRegion
            SET SysEndTime = NEW.SysEndTime
            SET SysStartTime = NEW.SysStartTime
            SET UserAuthorizationId = NEW.UserAuthorizationId
            SET TransactionNumber = NEW.TransactionNumber
            IF NOT FOUND THEN RETURN NULL; END IF;

            INSERT INTO Audit.CountryHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
            RETURN NEW;

        END IF;
    END;
$Country_audit$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_Country
    INSTEAD OF DELETE OR UPDATE ON Sales.Country
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_update();
    
