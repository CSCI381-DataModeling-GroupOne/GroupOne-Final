from collections import defaultdict
import os
from pathlib import Path
from pprint import pprint
import string
from sys import path


def make_pgres_trigger(audit_table, attr):
    parents = {
        'Audit.CountryHistory': 'Sales.Country',
        'Audit.CustomerHistory': 'Sales.Customer',
        'Audit.DepartmentHistory': 'HumanResources.Department',
        'Audit.ManufacturerVehicleStockHistory': 'Inventory.ManufacturerVehicleStock', 
        'Audit.ManufacturerVehicleMakeHistory': 'Inventory.ManufacturerVehicleMake',
        'Audit.ManufacturerVehicleModelHistory': 'Inventory.ManufacturerVehicleModel',
        'Audit.SalesOrderVehicleDetailHistory': 'Sales.SalesOrderVehicleDetail',
        'Audit.SalesOrderVehicleHistory' : 'Sales.SalesOrderVehicle',
        'Audit.StaffHistory': 'HumanResources.Staff',
    }

    KEYS = {
        'Sales.Country': 'CountryId',
        'Sales.Customer': 'CustomerId',
        'HumanResources.Department': 'DepartmentId',
        'Inventory.ManufacturerVehicleStock': 'ManufacturerVehicleStockId',
        'Inventory.ManufacturerVehicleMake': 'ManufacturerVehicleMakeId',
        'Inventory.ManufacturerVehicleModel': 'ManufacturerVehicleModelId',
        'Sales.SalesOrderVehicleDetail': 'SalesOrderVehicleDetailId',
        'Sales.SalesOrderVehicle': 'SalesOrderVehicleId',
        'HumanResources.Staff': 'StaffId'
        
    }

    prn = parents[audit_table]
    schema, _tbl = prn.split(".")
    print(f"{prn} -> {_tbl} {_tbl}")

    ## create a multiline f-string with triple quotes
    output = f"""
CREATE TRIGGER uTu_{_tbl} ON {prn} 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
"""
    for key in attr:
        if key not in ['TriggerOption','Notes','IsDeleted',	'SysEndTime','SysStartTime','UserAuthorizationId','TransactionNumber']:
            output += f"""\t\t\tA.{key} = I.{key},\n"""

            # A.CustomerId = I.CustomerId,
            # A.CustomerName = I.CustomerName,
            # A.CustomerAddress = I.CustomerAddress,
            # A.CustomerExpenditureClassificationID = I.CustomerExpenditureClassificationID,
            # A.IsCustomerCreditRisk = I.IsCustomerCreditRisk,
            # A.IsCustomerReseller = I.IsCustomerReseller,

    output += f"""\t\t\tA.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.UserAuthorizationId = I.UserAuthorizationId,
            A.TransactionNumber = I.TransactionNumber + 1

		FROM {prn} A
		INNER JOIN INSERTED I
			ON A.{KEYS[prn]} = I.{KEYS[prn]};
	end
    insert into {audit_table}
    (
        TriggerOption,
        Notes,
        IsDeleted,
"""

    for key in attr:
        if key not in ['TriggerOption','Notes','IsDeleted',	'SysEndTime','SysStartTime','UserAuthorizationId','TransactionNumber']:
            output += f"""\t\t{key},\n"""

        # CustomerId,
        # CustomerCompanyName,
		# CustomerAddress,
        # IsCustomerReseller,
        # IsCustomerCreditRisk,
        # CustomerExpenditureClassificationID,
    
    output += f"""\t\tSysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'U'
        'Row was updated',
        'N',
"""

    for key in attr:
        if key not in ['TriggerOption','Notes','IsDeleted',	'SysEndTime','SysStartTime','UserAuthorizationId','TransactionNumber']:
            output += f"""\t\t{key},\n"""

		# CustomerID,
		# CustomerName,
		# concat(CustomerAddress1, coalesce(CustomerAddress2, ''), CustomerTown, CustomerPostalCode),
		# IsCustomerReseller,
		# IsCustomerCreditRisk,
		# CustomerSpendCapacityID,

    output += f"""\t\tDeleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
"""
    # src_file = "/Users/wdanni/381heller/final/triggers/audit_tables.txt"
    print(f"cwpath: {path[0]}")
    sol_path = Path(path[0] + f'/mssql/uTu_{_tbl}.sql')
    sol_path.touch(exist_ok=False)   
    dest = open(sol_path, "w")
    dest.write(output) 

    return output

dir_path = path[0]  ## get cwd
print(dir_path)

d = defaultdict(list)
src_file = dir_path + "/audit_tables.txt"
tables = open(src_file).read().split("\n\n")
pprint(tables)
for tbl in tables:
    tblname, *columns = map(str.strip, tbl.split())
    d[tblname] = columns
    print(f"processing {tblname}")
    pgtrg = make_pgres_trigger(tblname, d[tblname])
    # print(pgtrg)
    # sol_path = Path(os.path.join((dir_path), f'/after_update/{tbl}.sql'))
    # print
    # sol_path.touch(exist_ok=True)   
    # dest = open(sol_path, "w")
    # dest.write(pgtrg)     
    # print(tblname)
