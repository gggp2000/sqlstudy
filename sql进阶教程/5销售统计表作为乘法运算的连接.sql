select i.ITEM,
    (select sum(case when sh.ITEM_NO = i.ITEM_NO then QUANTITY else 0 end)
    from "SalesHistory" sh)
    as total_qty
    from "Item" i