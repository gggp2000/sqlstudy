-- 方法三：嵌套case分组计算出现次数为1的情况
select NAME,
       case when sum(case when COURSE='SQL入门' then 1 else null end) = 1
            then '〇' else '×' end as "SQL入门",
       case when sum(case when COURSE='UNIX基础' then 1 else null end) = 1
            then '〇' else '×' end as "UNIX基础",
       case when sum(case when COURSE='Java中级' then 1 else null end) = 1
            then '〇' else '×' end as "Java中级"
from "Courses"
group by NAME