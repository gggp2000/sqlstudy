-- 删除数据库中重复的条目 橘子 100 自连接
delete from "Products" p1
where rowid < (select max(p2.rowid)
               from "Products" p2
               where p1.name=p2.name and p1.PRICE=p2.PRICE)