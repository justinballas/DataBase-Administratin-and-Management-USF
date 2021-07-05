/*4. Patient itemized bill: List of treatments and items, by charge and sorted by date. 
*/

select p.FirstName, p.LastName, t.Name, t.charge, i.Name, i.charge
from Patient p
join AdminTreatment adt
on adt.PatientID = p.PatientID
join Treatment t
on t.TreatmentID = adt.TreatmentID
join ChargeItem ch
on ch.PatientID = p.PatientID
join Item i
on i.ItemID = ch.ItemID

