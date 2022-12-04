select p1.district, p1.name, p1.price,
       (select count(distinct p2.price) from "DistrictProducts" p2
        where p1.DISTRICT = p2.DISTRICT --同一个地区进行比较
        and p2.PRICE > p1.price)+1 as rank
from "DistrictProducts" p1