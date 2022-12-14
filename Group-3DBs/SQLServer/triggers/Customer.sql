-- CREATE TABLE Sales.Customer
-- ( 
-- 	CustomerID           sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	CustomerName         sdPersonNameString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_CustomerName_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	CustomerAddress1     sdAddressesString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_CustomerAddress1_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	CustomerAddress2     sdAddressesString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_CustomerAddress2_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	CustomerTown         sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_CustomerTownUnavailable
-- 		 DEFAULT  'Unavailable',
-- 	CustomerPostalCode   sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_CustomerPostalCode_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	IsCustomerReseller   sdFlagBit.bit  NULL 
-- 	CONSTRAINT DF_Customer_IsCustomerReseller_FlagFalse
-- 		 DEFAULT  0,
-- 	IsCustomerCreditRisk sdFlagBit.bit  NULL 
-- 	CONSTRAINT DF_Customer_IsCustomerCreditRisk_FlagFalse
-- 		 DEFAULT  0,
-- 	CustomerExpenditureClassificationID sdSequenceNumber.integer  NULL ,
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_Customer_Note_Note
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Customer_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_Customer_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_Customer_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Customer_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Customer_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	-- SysEndTime__1659     char(18)  NULL ,
-- 	-- SysStartTime__1660   char(18)  NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	CountryID            sdSequenceInteger.int  NULL 
-- )
-- go

create trigger Sales.uTdu_CustomerHistory
on Sales.Customer
after delete, update --, insert
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
    declare @DeletedMessage char(25) = 'Rows has been deleted';
    declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';

    if (@action <> 'I')
        insert into Audit.CustomerHistory
        (
            CustomerHistoryTimestamp
            , TriggerOption
            , CustomerID
            , CustomerName
			, CustomerAddress
            , IsCustomerReseller
            , IsCustomerCreditRisk
            , CustomerExpenditureClassificationID
			, CountryID
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as CustomerHistoryTimestamp
                , @action             as TriggerOption
                , CustomerID
                , CustomerName
				, concat(CustomerAddress1, CustomerAddress2, CustomerTown, CustomerPostalCode)
                , IsCustomerReseller
                , IsCustomerCreditRisk
                , CustomerExpenditureClassificationID
				, CountryID
                , case
                    when @action <> 'D' then
                        Deleted.Notes
                    else
                        @DeletedMessage
                end
                , @IsDeleted          as IsDeleted
                , Deleted.TransactionNumber
                , UserAuthenticatedKey
                , TimestampRowChanged
                , Deleted.SysStartTime
                , case
                    when @action <> 'D' then
                        @SysStartTimeAsSysEnd
                    else
                        sysdatetime()
                end as SysEndTime
        from Deleted;
end;

