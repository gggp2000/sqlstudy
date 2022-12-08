select RESERVER, START_DATE, END_DATE
from RESERVATIONS r1
where exists
    (select * from RESERVATIONS r2
    where r1.RESERVER<>r2.RESERVER
      and (to_date(r1.START_DATE,'YYYY-MM-DD'),to_date(r1.END_DATE,'YYYY-MM-DD')) overlaps (to_date(r2.START_DATE,'YYYY-MM-DD'),to_date(r2.END_DATE,'YYYY-MM-DD')))