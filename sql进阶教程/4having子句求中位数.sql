select avg(distinct income) AS 中位数 from
(select t1.income from "Graduates" t1, "Graduates" t2
group by t1.income
having sum(case when t2.INCOME >= t1.INCOME then 1 else 0 end) >=count(*)/2
and sum(case when t2.INCOME <= t1.INCOME then 1 else 0 end) >=count(*)/2)
