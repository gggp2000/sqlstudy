-- 方法二：水平展开，使用标量子查询
select C0.name,
       (select '〇' from "Courses" C1 where course = 'SQL入门'
                    and C1.name = C0.name) as "SQL入门",
       (select '〇' from "Courses" C2 where course = 'UNIX基础'
                    and C2.name = C0.name) as "UNIX基础",
       (select '〇' from "Courses" C3 where course = 'Java中级'
                    and C3.name = C0.name) as "Java中级"
from (select distinct name from "Courses") C0