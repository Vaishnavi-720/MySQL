-- Joins

-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

#INNER JOIN --> Returns records that have matching values in both tables

-- INNER JOIN Syntax
-- [ 	SELECT column_name(s)
-- 		FROM table1
-- 		INNER JOIN table2
-- 		ON table1.column_name = table2.column_name; 	]

#LEFT JOIN --> Returns all records from the left table, and the matched records from the right table

-- LEFT JOIN Syntax
-- [	SELECT column_name(s)
-- 		FROM table1
-- 		LEFT JOIN table2
-- 		ON table1.column_name = table2.column_name;		]

 #RIGHT JOIN -->  Returns all records from the right table, and the matched records from the left table

-- RIGHT JOIN Syntax
-- [	SELECT column_name(s)
-- 		FROM table1
-- 		RIGHT JOIN table2
-- 		ON table1.column_name = table2.column_name;		]

#CROSS JOIN -->  Returns all records from both tables

-- CROSS JOIN Syntax
-- [	SELECT column_name(s)
-- 		FROM table1
-- 		CROSS JOIN table2;		]

#SELF JOIN --> A self join is a regular join, but the table is joined with itself.

-- Self Join Syntax
-- [	SELECT column_name(s)
-- 		FROM table1 T1, table1 T2
-- 		WHERE condition;		]
