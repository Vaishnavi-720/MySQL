-- Case Statements
-- The CASE statement goes through conditions and returns a value when the first condition is met 

-- CASE Syntax
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     WHEN conditionN THEN resultN
--     ELSE result
-- END;   

SELECT *
FROM employee_demographics;

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN "Young"
    ELSE "Old"
END "Age_Bracket"
FROM employee_demographics
WHERE age IS NOT NULL
ORDER BY age;

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN "Young" 
    WHEN age BETWEEN 30 AND 40 THEN "Elder"
    ELSE "Old"
END "Age_Bracket"
FROM employee_demographics
WHERE age IS NOT NULL
ORDER BY age;

SELECT * 
FROM employee_salary;

SELECT employee_id, first_name, last_name, salary,
CASE
	WHEN salary < 30000 THEN "Less_Salary"
    WHEN salary BETWEEN 30000 AND 60000 THEN "Good_Salary"
    ELSE "Best_Salary"
END AS "SALARY_TYPE"
FROM employee_salary;


-- Pay incrase & Bonus 
-- < 50000 = 5% increase
-- > 50000 = 7% increaee
-- Finance = 10% increase

SELECT * FROM employee_salary;

SELECT * FROM employee_salary;
SELECT * FROM Parks_departments;

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN Salary + (salary * 0.05)
    WHEN salary >= 50000 THEN Salary + (salary * 0.07)
END "New_salary",
CASE
	 when dept_id = 6 THEN (salary * 0.1)
END "Bonus"
from employee_salary;