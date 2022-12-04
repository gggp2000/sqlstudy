select DISTRICT, name, PRICE,
       dense_rank() over (partition by DISTRICT order by PRICE desc) as rank
from "DistrictProducts"