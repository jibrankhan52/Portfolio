-- create a database 
CREATE DATABASE PROJECT;

-- using database

USE PROJECT;

create table calls(
ID char(50),
cust_name CHAR(50),
sentiment CHAR(20),
csat_score INT,
call_timestamp CHAR(10),
reason CHAR(20),
city CHAR(20),
state CHAR(20),
channel CHAR(20),
response_time CHAR(20),
call_duration_minutes INT,
call_center CHAR(20)
);

select * from calls limit 10;

set sql_safe_updates = 0;

update calls set call_timestamp = str_to_date(call_timestamp, '%m/%d/%Y');

update calls set csat_score = null where csat_score = 0;

set sql_safe_updates = 1;

select * from calls limit 50;


select count(*) as rows_num from calls;

select count(*) as cols_num from information_schema.columns where table_name = 'calls';


select distinct sentiment from calls;

select distinct reason from calls;

select distinct channel from calls;

select distinct response_time from calls;

select distinct call_center from calls;


select sentiment, count(*), round((count(*)/ (select count(*) from calls)) * 100,1) as pct
from calls group by 1 order by 3 desc;

select reason, count(*), round((count(*)/ (select count(*) from calls)) * 100,1) as pct
from calls group by 1 order by 3 desc;

select dayname(call_timestamp) as Day_of_Call, count(*) num_of_calls from calls group by 1 order by 2 desc;

select min(csat_score) as min_score, max(csat_score) as max_score, round(avg(csat_score),1) as avg_score
from calls where csat_score !=0;

select min(call_timestamp) as earliest_date, max(call_timestamp) as most_recent from calls;

select min(call_duration_minutes) as min_call_duration, max(call_duration_minutes) as max_call_duration, avg(call_duration_minutes) as avg_call_duration from calls;

select call_center, response_time, count(*) as count
from calls group by 1,2 order by 1,3 desc;

select call_center, avg(call_duration_minutes) from calls group by 1 order by 2 desc;

select channel, avg(call_duration_minutes) from calls group by 1 order by 2 desc;

select state, count(*) from calls group by 1 order by 2 desc;

select state, reason, count(*) from calls group by 1,2 order by 1,2,3 desc;

select state, sentiment, count(*) from calls group by 1,2 order by 1,3 desc;

select state, avg(csat_score) as avg_csat_score from calls where csat_score!=0 group by 1 order by 2 desc;

select sentiment, avg(call_duration_minutes) from calls group by 1 order by 2 desc;


