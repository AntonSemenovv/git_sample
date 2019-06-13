select * from company1.employees where salary>30000;
SELECT employees.first_name, employees.last_name, post.post_name, employees.salary
FROM employees
INNER JOIN post ON employees.position_id=post.id where post.post_name='Accountant' and salary>30000;
