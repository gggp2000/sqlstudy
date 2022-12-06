select dpt as 学院
from "Students"
group by dpt
having count(*) = sum(case when SBMT_DATE between '2005-09-01' and '2005-09-30'
                           then 1 else 0 end)