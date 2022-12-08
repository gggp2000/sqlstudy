select year, SALE,
       case sign(SALE-(select sale from SALES s2 where s2.year = s1.year-1))
            when 0 then '→'
            when 1 then '↑'
            when -1 then '↓'
            else '--' end as 趋势
from SALES s1
