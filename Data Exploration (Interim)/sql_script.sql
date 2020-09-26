/* Get the number of tables in the database ==>> results in 448*/

select count(*) from information_schema.tables where table_schema = 'public';

/* Get the number of records in some important tables */

SELECT COUNT(*) FROM mdl_logstore_standard_log ;
SELECT COUNT(*) FROM mdl_context ;
SELECT COUNT(*) FROM mdl_user ;
SELECT COUNT(*) FROM mdl_course ;
SELECT COUNT(*) FROM mdl_modules ;
SELECT COUNT(*) FROM mdl_course_modules;

/* get the number of quiz submissions by hour of the day */
select count(id), 
EXTRACT(HOUR FROM to_timestamp(timecreated)) AS HOUR 
from mdl_logstore_standard_log where action='submitted' AND component='mod_quiz' 
group by EXTRACT(HOUR FROM to_timestamp(timecreated));

/* count the number of times an event was commited by each user */
select userid, sum(case when action = 'viewed' then 1 else 0 end) as viewed,
sum(case when action = 'uploaded' then 1 else 0 end) as uploaded ,
sum(case when action = 'updated' then 1 else 0 end) as updated,
sum(case when action = 'answered' then 1 else 0 end) as answered ,
sum(case when action = 'abandoned' then 1 else 0 end) as abandoned, 
sum(case when action = 'submitted' then 1 else 0 end) as Submitted, 
sum(case when action = 'searched' then 1 else 0 end) as searched, 
sum(case when action = 'attempted' then 1 else 0 end) as attempted 
from mdl_logstore_standard_log group by userid;

