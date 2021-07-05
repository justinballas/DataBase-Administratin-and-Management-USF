create nonclustered index FI_Patient_State
ON Patient(state)
where state = 'FL'
