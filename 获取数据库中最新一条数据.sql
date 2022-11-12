select * from
(select * from IDX_RISKAREA  order by UPDATE_TIME desc)
where rownum=1
