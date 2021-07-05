Select Item.Name, Item.Charge, CI.Quantity, CI.PatientID
From item 
Cross Join ChargeItem CI
