/*3. Total list of treatments administered to a patient by physician for each treatment, 
sorted by date of treatment, listing last name of patient and of physician. 
*/

select t.TreatmentID, p.LastName, ph.LastName
from Treatment t
join AdminTreatment adt
on adt.TreatmentID = t.TreatmentID
join Physician ph
on ph.DoctorID = adt.DoctorID
join Patient p
on p.PatientID = adt.PatientID
order by adt.Date