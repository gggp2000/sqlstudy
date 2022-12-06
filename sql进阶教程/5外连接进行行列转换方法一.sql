-- 方法一：水平展开求交叉表，使用外连接
select distinct C0.name,
        case when C1.name is not null then '〇' else '×' end as SQL入门,
        case when C2.name is not null then '〇' else '×' end as UNIX基础,
        case when C3.name is not null then '〇' else '×' end as Java中级
from "Courses" C0
left outer join (select name from "Courses" where course = 'SQL入门') C1
    on C0.name = C1.name
left outer join (select name from "Courses" where course = 'UNIX基础') C2
    on C0.name = C2.name
left outer join (select name from "Courses" where course = 'Java中级') C3
    on C0.name = C3.name
order by name