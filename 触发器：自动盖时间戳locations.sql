create editionable trigger "C##RISKAREA"."TRI_LOCATION_UPDATETIME"
    before insert or update on LOCATIONS for each row
    begin
        :new.UPDATE_TIME :=sysdate;
    end;
alter trigger "C##RISKAREA"."TRI_LOCATION_UPDATETIME" enable;