/*Count*/
select count(Date) as 'Total Patient Treatments', phy.LastName
from AdminTreatment adt
join Physician phy
on adt.DoctorID = phy.DoctorID
group by phy.LastName order by count(Date) desc