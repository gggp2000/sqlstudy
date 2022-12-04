-- 获取只加入了1个社团的学生及其社团id
-- 有社团标记为Y的学生为加入了多个社团的学生。
-- 按照社团分组，不含有这样的学生社团为目标社团
-- 只加入了一个社团的学生id
select STD_ID,
       case when count(*) = 1 then max(CLUB_ID)
            else max(case when MAIN_CLUB_FLG='Y' then club_id else null end)
            end as main_club
from TMP_STUDENTCLUB
group by STD_ID
order by STD_ID
