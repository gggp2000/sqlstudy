select PRC_DATE,PRC_AMT,
       --(select sum(PRC_AMT) from ACCOUNTS where PRC_DATE <= a1.prc_date)
       sum(PRC_AMT) over (order by PRC_DATE)  --窗口函数
       as 累计
from ACCOUNTS a1