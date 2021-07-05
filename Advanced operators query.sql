select concat(p.firstname, ' ',p.lastname) as 'player', 
p.DOB as 'Birth Date', 

concat('Scored ',convert(varchar, isnull(pp.Goals, 0)),' Goals') as 'Goals Scored',

concat('Played for ',cast(isnull(pp.Minutes, '0') as varchar),' Minutes') as 'minutes played',

	case when pp.Goals > 1 then 'Scored More Than Once'
	else 'Scored Once or less'
	end as ScoreText

from player p
left join PlayerPerformance pp
on p.playerid = pp.playerid