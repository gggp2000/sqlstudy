-- 香蕉 橘子 苹果 可重复组合 自连接
select p1.name, p2.name
from "Products" p1, "Products" p2
where p1.name >= p2.name