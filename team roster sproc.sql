create procedure team_roster_by_name
@Name nvarchar(30)
as
select t.Name, p.FirstName, p.LastName
from
Team t
join PlayerTeam pt
on pt.TeamID = t.TeamID
join Player p
on pt.PlayerID = p.PlayerID
where t.Name = @Name