select INCOME, count(*) as freq
from "Graduates"
group by income
having count(*) >= (select max(cnt) from (select count(*) as cnt from "Graduates" group by income) TMP)