select * from IDX_RISKAREA
    where (PUBLIC_DATE,PUBLIC_TIME) in
    (select PUBLIC_DATE, max(PUBLIC_TIME) PUBLIC_TIME from IDX_RISKAREA
        group by PUBLIC_DATE)
    and PUBLIC_DATE between sysdate-30 and sysdate
    order by PUBLIC_DATE desc
