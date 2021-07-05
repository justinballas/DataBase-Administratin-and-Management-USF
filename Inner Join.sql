select ph.lastname, p.LastName, adt.Date, adt.Time, adt.Results
from Patient p
join AdminTreatment adt
on adt.PatientID = p.PatientID
join Physician ph
on ph.DoctorID = adt.DoctorID
