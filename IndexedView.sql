create view ChargeNurseReport_index with schemabinding 
as
select FirstName, LastName, Location
from dbo.Nurse
join dbo.Ward
on Nurse.NurseID = Ward.ChargeNurseID

go

create unique clustered index CUN_ChargeNurseReport_Index
on ChargeNurseReport_Index(FirstName, LastName, Location)