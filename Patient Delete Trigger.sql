Create Trigger Patient_delete_trigger
On Patient
For Delete
As
Insert Into PatientDeletedRows (FirstName, LastName, Gender, DOB, Street, City,
State, Zip, Phone, AltPhone, Email)
select FirstName, LastName, Gender, DOB, Street, City, State, Zip, Phone,
AltPhone, Email
from deleted

