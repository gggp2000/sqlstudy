select si.SHOP
from "ShopItems" si left outer join ITEMS i on si.ITEM = i.ITEM
group by si.SHOP
having count(si.ITEM) = (select count(item) from items)
and count(i.ITEM) = (select count(item) from items)
