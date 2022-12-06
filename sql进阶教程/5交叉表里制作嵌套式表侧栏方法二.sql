--使用外连接制作侧栏
select master.AGE_RANGE, master.SEX,
       data.pop_tohoku as "东北",
       data.pop_kanto as "关东"
from( select AGE_CLASS,AGE_RANGE,SEX_CD,SEX from "TblAge" cross join "Tblsex") master
-- 使用cross join形成两张表的笛卡尔积
left outer join (select AGE_CLASS, SEX_CD,
                        sum(case when PREF_NAME in ('青森','秋田')
                                 then POPULATION else null
                                 end) as pop_tohoku,
                        sum(case when PREF_NAME in ('千叶','东京')
                                 then POPULATION else null
                                 end) as pop_kanto
                 from "TblPop"
                 group by AGE_CLASS, SEX_CD) data
on master.AGE_CLASS = data.AGE_CLASS and master.SEX_CD = data.SEX_CD
order by master.AGE_CLASS, master.SEX_CD desc