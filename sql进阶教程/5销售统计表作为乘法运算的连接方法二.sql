--先进行一对多的连接，再聚合
select i.ITEM, sum(sh.QUANTITY) as total_qty
from "Item" i
left outer join "SalesHistory" sh on i.ITEM_NO = sh.ITEM_NO
group by i.ITEM
order by total_qty