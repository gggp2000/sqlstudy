-- 方法一： from table1， table2 相当于cross join
select ta.age_range,ts.SEX,
       (select sum(case when SEX_CD = ts.SEX_CD and AGE_CLASS=ta.AGE_CLASS and PREF_NAME in ('秋田','青森')
                        then POPULATION end) from "TblPop") as "东北",
       (select sum(case when SEX_CD = ts.SEX_CD and AGE_CLASS=ta.AGE_CLASS and PREF_NAME in ('东京','千叶')
                        then POPULATION end) from "TblPop") as "关东"
       from "TblAge" ta, "Tblsex" ts
order by ta.AGE_RANGE, ts.SEX desc
