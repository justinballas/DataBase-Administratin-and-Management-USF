create view Team_Coach_Phone_View
as
select t.Name as 'Team Name', 
concat(c.FirstName, c.LastName) as 'Coach',
c.Phone as 'Coach Phone'
from Team t
join CoachAssignment ca
on ca.TeamID = t.TeamID
join Coach C
on ca.CoachID = c.CoachID