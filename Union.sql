	  -- Unions
#%%%%%%%%%%%%%%%%%%%%%%%%%#
-- Used to combine multiple tables together (One select statement with another select statement)

SELECT * 
FROM employee_demographics;

-- union is by default distinct
-- UNION ALL is used to show all the data

SELECT * 
FROM employee_demographics
UNION 
SELECT *
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary;

-- show name of person whose age is greater than 50 and label them
SELECT first_name, last_name, 'Old' as Label
FROM employee_demographics
WHERE age > 50;

-- show name of person whose age is greater than 50 label them as 'Old' and who have salary greater than 70K label them as 'Highly Paid Employee'

SELECT first_name, last_name, 'Old' as Label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000;

-- show name of person whose age is greater than 40 label them as 'Old' and who have salary greater than 70K label them as 'Highly Paid Employee' and differentiate them by gender
SELECT first_name, last_name, 'Old Man' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name;