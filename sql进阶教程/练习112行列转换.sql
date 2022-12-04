select case when sex='1' then '男' else '女' end as 性别,
       sum(POPULATION) as 全国,
       sum(case when PREF_NAME = '德岛' then POPULATION end) as 德岛,
       sum(case when PREF_NAME = '香川' then POPULATION end) as 香川,
       sum(case when PREF_NAME = '爱媛' then POPULATION end) as 爱媛,
       sum(case when PREF_NAME = '高知' then POPULATION end) as 高知,
       sum(case when PREF_NAME in ('德岛','香川','爱媛','高知') then POPULATION end) as 四国_再揭
from "tmp_PopTbl2"
group by sex