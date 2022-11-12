select PUBLIC_DATE,PUBLIC_TIME,hcount,mcount,lcount from IDX_RISKAREA
where PUBLIC_DATE = to_date('2022-11-11','YYYY-MM-DD')
and rownum=1
order by PUBLIC_TIME desc