--select '存在缺失的编号' as gap
--from RISK_AREA
--having count(*) <> max(RISKAREA_NO)
select '最小编号' as 条件,
       case when min(RISKAREA_NO) > 1
            then 1
            else (select min(RISKAREA_NO+1) from RISK_AREA r1
                  where not exists(select * from RISK_AREA r2 where r2.RISKAREA_NO = r1.RISKAREA_NO+1))
            end as id
from RISK_AREA