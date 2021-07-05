/*8. Create a distribution of nurses across all wards, and a distribution of all 
wards across patients. 
*/

select w.Location 'Ward', p.LastName
from ward w
left join bed b
on b.WardID = w.WardID
left join Patient p
on p.PatientID = b.PatientID