select p1.district,p1.NAME,max(PRICE) as price,
       count(p2.name)  as rank
from "DistrictProducts" p1 left outer join "DistrictProducts" p2
on p1.DISTRICT=p2.DISTRICT
group by DISTRICT,NAME
order by DISTRICT,price desc