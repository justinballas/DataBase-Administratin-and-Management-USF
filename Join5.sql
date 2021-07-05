/*5. List all nurse-patient events with nurse name and patient name. 
*/

Select p.FirstName, p.LastName, n.FirstName, n.LastName, c.event
from patient p
join Care c
on p.PatientID = c.CareID
join Nurse n
on n.NurseID = c.NurseID