create nonclustered index FI_Patient_State
on Patient(state)
where state = 'FL'