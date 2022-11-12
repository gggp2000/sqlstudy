select * from IDX_RISKAREA
where PUBLIC_DATE = to_date('2022-11-11','YYYY-MM-DD') and ROWNUM=1
order by PUBLIC_TIME desc