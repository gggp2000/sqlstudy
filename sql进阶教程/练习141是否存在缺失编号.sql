select case when count(CITY_NO) <> max(CITY_NO)
            then'存在缺失编号'
            else '不存在缺失编号'
            end
            as gap
from  CITY