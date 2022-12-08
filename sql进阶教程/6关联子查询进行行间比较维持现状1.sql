select s1.year, s1.sale
from SALES s1
where sale = (select s2.sale from SALES s2 where s2.year = s1.year-1 )