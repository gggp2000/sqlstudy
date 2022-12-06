select shop, count(i.item) as my_item_cnt,
       (select count(*) from ITEMS) - count(i.item) as diff_cnt
from "ShopItems" si, ITEMS i
where si.ITEM=i.ITEM
group by shop
order by my_item_cnt desc