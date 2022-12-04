-- count(*) 所有行数
-- count(sbmt_date) 当前列中不包含null的行数
select dpt as 学院, count(*) as total,count(SBMT_DATE) as sbmt_count,
       case when count(*) = count(SBMT_DATE)
            then '是'
            else '否'
            end as 学生是否全交作业
from "Students" group by dpt


select dpt as 学院
from "Students"
group by dpt
having count(*) = count(SBMT_DATE)