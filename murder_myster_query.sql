select *
from crime_scene_report
where type = 'murder' AND  date = 20180115 and  city = 'SQL City'; 
/*Query to find the description of the crime scene, date and location, which reveals two witnesses*/ 

select *
from person
where address_street_name like '%Northwestern Dr%' or name like '%Annabel%'
order by address_number asc;
/*Query that finds the two witnesses and their ID's, Annabel on Franklin Ave and Morty Schapiro, last house on Northwstern Dr*/

Select *
from interview
where person_id in ("16371","14887") ;
/*Query that searches through the interview by ID which reveals a gym membership id, a murder date and license plate number*/

select * 
from get_fit_now_check_in
where check_in_date = 20180109 and membership_id like '%48Z%';
/*Query that reveals membership_ids of two suspects that checked in the day of the murder*/


select * 
from drivers_license
where plate_number like '%H42W%' and gender = 'male';
/*Query that reveals plate numbers from the crime scene, make, model and owner info */


select *
from get_fit_now_member
where person_id in ("51739", "67318");
/* Query that reveals that Jeremy Bowers is the suspect*/

Insert into solution VALUES(1, 'Jeremy Bowers');
select value from solution; 

select *
from interview
where person_id = 67318;
/*Query that reveals the motive and details about the person who hired the suspect*/

select *
from drivers_license
where hair_color = 'red' and gender = 'female' and car_make = 'Tesla' and height between 65 and 67;
/*Querying drivers_license for the description of suspect*/

select *
from person
where license_id in ('202298','291182','918773');
/*Query that reveals id #s of potential suspects*/


select *
from facebook_event_checkin
where event_name ='SQL Symphony Concert'
and date BETWEEN 20171201 and 20171231
and person_id in("78881","90700","99716");
/*Query reveals Miranda Preistly visited 3 times, corrobrating the suspects confession*/


select *
from income
where ssn = 987756388;
/*Query that corroborate that the suspect indeeds does make a lot of money*/

insert into solution values(1, 'Miranda Priestly');
select value from solution;


