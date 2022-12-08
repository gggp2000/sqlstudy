select s2.year as "上年", s1.YEAR as "当年",
       s2.SALE as "上年销售额", s1.SALE as "当年销售额",
       s1.SALE - s2.SALE as "销售额变化"
from SALES2 s1, SALES2 s2
where s2.year = (select max(s3.YEAR) from SALES2 s3 where s3.YEAR < s1.YEAR )
