	-- String Functions
#%%%%%%%%%%%%%%%%%%%%%%%%%#

SELECT * 
FROM employee_demographics;

SELECT LENGTH('Sunrise');
-- LENGHT() ---> shows the length of string

SELECT first_name, LENGTH(first_name) 'length'
from employee_demographics
ORDER BY length;

SELECT UPPER('sky');
SELECT LOWER('SKY');
-- UPPER()---> TO MAKE ALL UPPEERCASE  LOWER()---> TO MAKE ALL LOWERCASE

SELECT first_name, UPPER(first_name) 'NAME', LOWER(first_name) 'name'
from employee_demographics;

SELECT TRIM('    SKY') 'CLEAR';      -- REMOVES BLANK SPACES
SELECT LTRIM('    SKY     ') 'CLEAR';   -- REMOVES BLANK SPACES FROM LEFT SIDE
SELECT RTRIM('    SKY     ') 'CLEAR';      -- REMOVES BLANK SPACES FROM RIGHT SIDE

SELECT first_name,
LEFT(first_name, 3),
RIGHT(first_name, 3),
birth_date,
SUBSTRING(birth_date, 6,2) 'Birth_Month',
SUBSTRING(birth_date FROM 6 FOR 2) 'Birth_Month'
FROM employee_demographics;

-- LEFT(string, number_of_chars) ----> extracts a number of characters from a string (starting from left)
-- RIGHT(string, number_of_chars) ----> extracts a number of characters from a string (starting from right)
-- SUBSTRING(string, start, length) 0R SUBSTRING(string FROM start FOR length) ---> extracts a substring from a string (starting at any position)

SELECT first_name, REPLACE(first_name, 'e', 'k')
FROM employee_demographics;

-- REPLACE(string, substring, new_string)---> replaces all occurrences of a substring within a string, with a new substring

SELECT LOCATE('H','VAISHNAVI');
SELECT first_name, LOCATE('o',first_name)
FROM employee_demographics;

-- LOCATE(substring, string, start)---> returns the position of the first occurrence of a substring in a string
-- substring--> Required. The substring to search for in string
-- string--> Required. The string that will be searched
-- start--> Optional. The starting position for the search. Position 1 is default

SELECT first_name, last_name,
UPPER(CONCAT(first_name, ' ', last_name)) AS 'FULL_NAME'
FROM employee_demographics;

SELECT first_name, last_name,
UPPER(CONCAT_WS('_', first_name, last_name)) AS 'FULL_NAME'
FROM employee_demographics;
-- CONCAT(expression1, expression2, expression3,...)---> adds two or more expressions together
-- CONCAT_WS(separator, expression1, expression2, expression3,...)---> adds two or more expressions together with a separator