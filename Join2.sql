/*2. Physician total admits for the past year, sorted by date. */
select ph.FirstName 'physician name', ph. LastName, p.FirstName'Doctor Name', p.LastName
from physician ph
join AdmitDischarge ad
on ad.DoctorID = ph.DoctorID
join patient p
on p.PatientID = ad.PatientID
order by ad.AdmitDate