Create trigger Player_delete_trigger
on Player
for delete
as
insert into DeletedPlayers (FirstName, LastName, Street, City, State, Zip, DOB, Age, PlayerPhone, ParentName, ParentPhone)
select FirstName, LastName, Street, City, State, Zip, DOB, Age, PlayerPhone, ParentName, ParentPhone
from deleted