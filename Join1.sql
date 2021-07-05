select p.Lastname, ph.LastName, w.Location 'ward location', b.BedID
from Patient p
join AdmitDischarge adj
on p.PatientID = adj.PatientID
join Physician ph
on adj.DoctorID = ph.DoctorID
join bed b
on b.PatientID = p.PatientID
join ward w
on w.WardID = b.WardID
order by adj.AdmitDate

