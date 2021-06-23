USE [ChatBotDB]
GO
declare @i int=1,@employeeSapId int,@employeeName varchar(100),@employeeContactNo varchar(10)
,@employeeEmailId varchar(25),@locationId int=2
while (@i<=25)
BEGIN

select @employeeName=char((rand()*25 + 65))+char((rand()*25 + 65))+char((rand()*25 + 65))+char((rand()*25 + 65))
+char((rand()*25 + 65))+' '+char((rand()*25 + 65))+char((rand()*25 + 65))+char((rand()*25 + 65))+char((rand()*25 + 65))
+char((rand()*25 + 65))

select @employeeSapId=convert(numeric(8,0),rand() * 89999999) + 10000000

select @employeeContactNo=cast(convert(numeric(10,0),rand() * 8999999999) + 1000000000 as varchar(10))
select @employeeEmailId= SUBSTRING(@employeeName,0,6)+'@hcl.com'

INSERT INTO [dbo].[mEmployeeDetails]([employeeSapId],[employeeName],[employeeContactNo],[employeeEmailId]
           ,[employeeAddress],[createdDate],[isNotificationRequired],[isServiceRequired],[isActive],[locationId]
           ,[createdBy])
     select  @employeeSapId,@employeeName,@employeeContactNo,@employeeEmailId,'Address:'+@employeeName,getdate(),
	 1,1,1,@locationId,0
set @i=@i+1
END
GO


