select year, sale,
       case when sale = (select sale from SALES where year = s1.year-1) then '→'
            when sale > (select sale from SALES where year = s1.year-1) then '↑'
            when sale < (select sale from SALES where year = s1.year-1) then '↓'
            else '一'
            end as "趋势"
from SALES s1