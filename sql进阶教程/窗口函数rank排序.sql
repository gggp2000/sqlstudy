select name,PRICE,
       rank() over (order by PRICE desc) as rank1,
       dense_rank() over (order by PRICE desc) as rank2
from "Products"