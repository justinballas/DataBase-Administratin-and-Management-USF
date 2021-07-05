select b.BedID, w.WardID
from bed b
join ward w
on b.WardID = w.wardID