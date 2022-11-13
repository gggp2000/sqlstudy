create sequence seq_locations increment by 1 start with 43158 nomaxvalue nocycle
create editionable trigger "C##RISKAREA"."TRI_LOCATION_NO"
    before insert on LOCATIONS for each row when ( new.LOCATION_NO is null )
    begin
        select seq_locations.nextval into:new.LOCATION_NO from dual;
    end;

alter trigger "C##RISKAREA"."TRI_LOCATION_NO" ENABLE;