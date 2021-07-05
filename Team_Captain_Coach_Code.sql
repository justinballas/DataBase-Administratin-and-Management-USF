create view Team_Captain_Coach as
select t.Name as 'Team Name',
concat(p.FirstName,' ', p.LastName) as 'Team Captain',
concat(c.FirstName, c.LastName) as 'Coach'
from Team t
join CoachAssignment ca
on ca.TeamID = t.TeamID
join Coach c
on ca.CoachID = c.CoachID
join player p
on t.CaptainID = p.PlayerID