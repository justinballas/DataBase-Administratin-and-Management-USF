/*Create a distribution of beds across all wards, and a distribution of all wards across beds. 
*/

select w.Location 'Ward', b.BedID, b.Size, b.Type
from ward w
left join bed b
on b.WardID = w.WardID

select w.Location 'Ward', b.BedID, b.Size, b.Type
from ward w
Right join bed b
on b.WardID = w.WardID