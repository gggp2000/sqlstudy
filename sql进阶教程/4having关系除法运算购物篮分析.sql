-- 查询囊括了表items中所有商品的店铺
--select shop, sum(case when item in (select item from items i)
--                  then 1 else 0
--                  end) as item_exist
--from "ShopItems"
--group by shop
--having sum(case when item in (select item from items i)
--                  then 1 else 0
--                 end) = (select count(*) from items)
select shop from "ShopItems" si, ITEMS i
where si.ITEM = i.ITEM
group by shop
having count(shop) = (select count(item) from ITEMS)