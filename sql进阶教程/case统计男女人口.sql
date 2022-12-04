select PREF_NAME as 县名,
       -- 男性人数
       case when sex = '1' then sum(POPULATION) end
       as 男性,
       --女性人数
       case when sex = '2' then sum(POPULATION) end
       as 女性
from tmp_PopTbl2
