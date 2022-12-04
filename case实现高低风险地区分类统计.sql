select PUBLIC_DATE,PUBLIC_TIME,
       -- high
       sum( case when RISK_GRADE='high' then 1 else 0 end) as high_count,
       -- low
       sum( case when RISK_GRADE='low' then 1 else 0 end) as low_count
    from RISK_AREA
group by PUBLIC_DATE, PUBLIC_TIME