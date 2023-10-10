How to join the related tables of absenteeism ?
Find the healthiest person from the database?
 What is the compensation rate increase for non-smokers?
Optimize the query ?
Optimize the query creating seasons column along with the reason column?
Optimize the query retreive the data of  seasons and the person BMI Categories?





-- Creating join table 

select * from absenteeism_work a
left join work_compensation b
on a.id = b. work_id
left join work_reasons c 
on a.reason_absence = c.id;

We can see the main table named absenteeism_work has been joined and the below is the image of displayed columns of two sub tables in absenteeism_work.

 


--Finding the healthiest

select * from absenteeism_work
where social_drinker = false and social_smoker = false
and body_mass_index <25 and
absenteeism_time_in_hours < (select avg(absenteeism_time_in_hours) from absenteeism_work)
LIMIT 5;

Certainly! Here's a reframed version of your statement:

Retrieve the top 5 healthiest individuals based on criteria from four columns: `social_drinker`, `social_smoker`, `body_mass_index`, and `absenteeism_time_in_hours`. A person is deemed healthier if they don't drink or smoke socially, have a body mass index less than 25, and their absenteeism time is below the average.

id	reason_absence	month_absence	day_of_week	seasons	transportation_expense	distance_to_work	service_time	age	workload_per_day	hit_target	disciplinary_failure	education	son	social_drinker	social_smoker	pet	weight	height	body_mass_index	absenteeism_time_in_hours	
41	23	9	3	1	184	42	7	27	241476	92	FALSE	1	0	FALSE	FALSE	0	58	167	21	2	
52	0	9	2	4	225	26	9	28	241476	92	TRUE	1	1	FALSE	FALSE	2	69	169	24	0	
53	23	9	3	4	225	26	9	28	241476	92	FALSE	1	1	FALSE	FALSE	2	69	169	24	2	
57	18	9	4	4	225	26	9	28	241476	92	FALSE	1	1	FALSE	FALSE	2	69	169	24	3	
66	23	10	5	4	179	26	9	30	253465	93	FALSE	3	0	FALSE	FALSE	0	56	171	19	1	


---compensation rate increase for non-smokers/budget $983,221 so .68 increase per hour/$1,414 per year

select count(*) as nonsmokers from absenteeism_work
where social_smoker = false;

 

--optimize this query

select
a.id,
r.reason
from absenteeism_work a
left join work_compensation b
on a.id = b.work_id
left join work_reasons r on
a.reason_absence = r.id
LIMIT 10;

 
--optimize this query (creating a seasons column with case statement)

select
a.id,
r.reason,
CASE WHEN Month_absence IN (12,1,2) THEN 'Winter'
     WHEN Month_absence IN (3,4,5) THEN 'spring'
	 WHEN Month_absence IN (6,7,8) THEN 'summer'
	 WHEN Month_absence IN (9,10,11) THEN 'Fall'
	 ELSE 'Unknown' END as season_names
from absenteeism_work a
left join work_compensation b
on a.id = b.work_id
left join work_reasons r on
a.	reason_absence = r.id
Limit 10;

 
--optimize this query(with BMI Category and seasons column using Case statements)
select
a.id,
r.reason,
month_absence,
body_mass_index,
CASE WHEN body_mass_index <18.5 THEN 'Under Weight'
     WHEN body_mass_index between 18.5 and 25 THEN 'Normal Weight'
     WHEN body_mass_index between 25 and 30 THEN 'Over Weight'
	 WHEN body_mass_index >18.5 THEN 'Obesity'
	 ELSE 'Unknown' END as BMI_Category,
CASE WHEN Month_absence IN (12,1,2) THEN 'Winter'
     WHEN Month_absence IN (3,4,5) THEN 'spring'
	 WHEN Month_absence IN (6,7,8) THEN 'summer'
	 WHEN Month_absence IN (9,10,11) THEN 'Fall'
	 ELSE 'Unknown' END as season_names
from absenteeism_work a
left join work_compensation b
on a.id = b.work_id
left join work_reasons r on
a.reason_absence = r.id
LIMIT 10;


 

The query with added fields to use it to represent in  powerbi -

select
a.id,
r.reason,
month_absence,
body_mass_index,
CASE WHEN body_mass_index <18.5 THEN 'Under Weight'
     WHEN body_mass_index between 18.5 and 25 THEN 'Normal Weight'
     WHEN body_mass_index between 25 and 30 THEN 'Over Weight'
	 WHEN body_mass_index >18.5 THEN 'Obesity'
	 ELSE 'Unknown' END as BMI_Category,
CASE WHEN Month_absence IN (12,1,2) THEN 'Winter'
     WHEN Month_absence IN (3,4,5) THEN 'spring'
	 WHEN Month_absence IN (6,7,8) THEN 'summer'
	 WHEN Month_absence IN (9,10,11) THEN 'Fall'
	 ELSE 'Unknown' END as season_names,
seasons,
month_absence,
day_of_week,
transportation_expense,
education,
son,
social_drinker,
social_smoker,
pet,
disciplinary_failure,
age
from absenteeism_work a
left join work_compensation b
on a.id = b.work_id
left join work_reasons r on
a.reason_absence = r.id
LIMIT 10;



id	reason	month_absence	body_mass_index	bmi_category	season_names	seasons	month_absence-2	day_of_week	transportation_expense	education	son	social_drinker	social_smoker	pet	disciplinary_failure	age
1	unjustified absence 	7	30	Over Weight	summer	1	7	3	289	1	2	TRUE	FALSE	1	FALSE	33
2	Unkown	7	31	Obesity	summer	1	7	3	118	1	1	TRUE	FALSE	0	TRUE	50
3	medical consultation 	7	31	Obesity	summer	1	7	4	179	1	0	TRUE	FALSE	0	FALSE	38
4	Diseases of the eye and adnexa	7	24	Normal Weight	summer	1	7	5	279	1	2	TRUE	TRUE	0	FALSE	39
5	medical consultation 	7	30	Over Weight	summer	1	7	5	289	1	2	TRUE	FALSE	1	FALSE	33
6	medical consultation 	7	31	Obesity	summer	1	7	6	179	1	0	TRUE	FALSE	0	FALSE	38
7	patient follow-up 	7	27	Over Weight	summer	1	7	6	361	1	1	TRUE	FALSE	4	FALSE	28
8	medical consultation 	7	23	Normal Weight	summer	1	7	6	260	1	4	TRUE	FALSE	0	FALSE	36
9	Injury, poisoning and certain other consequences of external causes	7	25	Normal Weight	summer	1	7	2	155	1	2	TRUE	FALSE	0	FALSE	34
10	patient follow-up 	7	29	Over Weight	summer	1	7	2	235	3	1	FALSE	FALSE	1	FALSE	37

