-- Window Functions

select * from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id