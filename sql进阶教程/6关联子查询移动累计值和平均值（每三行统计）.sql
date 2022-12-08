select PRC_DATE,PRC_AMT,
       --(select sum(PRC_AMT) from ACCOUNTS where PRC_DATE <= a1.prc_date)
       avg(PRC_AMT) over (order by PRC_DATE rows 2 preceding )  --窗口函数
       as 每三行平均
from ACCOUNTS a1