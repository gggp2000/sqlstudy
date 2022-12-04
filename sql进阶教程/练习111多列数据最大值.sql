-- 从多列数据中选出最大值
-- idx表格中选出每行风险地区最大值
select PUBLIC_DATE,
       case when hcount > lcount
            then case when HCOUNT > MCOUNT
                      then HCOUNT
                      else MCOUNT
                      end
            else lcount
       end as max_count
from IDX_RISKAREA
