/*6. Find missing values for beds with and without patients, 
and for patients with and without beds.   
*/

Select p.FirstName, p.LastName, b.bedID
from bed b
left join patient p
on p.PatientID = b.PatientID

Select p.FirstName, p.LastName, b.bedID
from bed b
right join patient p
on p.PatientID = b.PatientID