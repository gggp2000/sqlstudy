select s1.year, s1.sale
from SALES2 s1
where s1.sale = (select s2.sale from SALES2 s2
                where s2.year = (select max(s3.year) from SALES2 s3 where s3.year < s1.year))