1. Select all data for all states.

Command:
SELECT * FROM states;

2. Select all data for all regions.

Command:
SELECT * FROM regions;

3. Select state_name and population for all states.

Command:
SELECT state_name, population FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

Command:
SELECT state_name, population FROM states
ORDER BY population DESC;

5. Select the state_name for the states in region 7.

Command: SELECT state_name FROM states
WHERE region_id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

Command:
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population DESC;

7. Select the state_name for states with a population between 1 million and 1.5 million people.

Command:
SELECT state_name
FROM states
WHERE population > 1000000
AND population < 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order.

Command:
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.

Command:
SELECT region_name
FROM regions
WHERE region_name LIKE "%Central%";

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

Command:
SELECT regions.region_name, states.stae_name
FROM states
INNER JOIN regions
ORDER BY region_id ASC;

Screenshot:
![screenshot](/week-8/database-intro/Release_7.png)

Reflection:
What are databases for?

Databases are designed to hold information and make it readily accessible.

What is a one-to-many relationship?

A one-to-many relationship is a correlation that works one way, but not necessarily in reverse. For example, all bananas are fruits, but not all fruits are bananas.

What is a primary key? What is a foreign key? 

A primary key is the first key in a database. A foreign key is a key from another database.

How can you determine which is which?

You can determine which is which from where the keys are located.

How can you select information out of a SQL database? What are some general guidelines for that?

Use the SELECT command. Declare the key of what you want to select, and what database you would like to select from. Don't forget the semicolon.