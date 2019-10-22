/*List the following details of each employee: 
employee number, last name, first name, gender, and salary.*/
SELECT 
	emp.emp_no as "Employee Number", 
	emp.last_name as "Last Name", 
	emp.first_name as "First Name", 
	emp.gender, 
	sal.salary 
FROM
	employees emp
JOIN salaries sal
	ON emp.emp_no = sal.emp_no;


/*List employees who were hired in 1986*/
select * from employees emp where date_part('year',emp.hire_date) = 1986;

/*List the manager of each department with the following information: 
department number, department name, the manager's employee number, 
last name, first name, and start and end employment dates.*/
select 
	dept.dept_no "department number",
	dept.dept_name "department name",
	dept_mgr.emp_no "Employee Number",
	emp.last_name "Last name",
	emp.first_name "First Name",
	dept_mgr.from_date "employment start date",
	dept_mgr.to_date "employment end date"
from
	employees emp
JOIN dept_manager dept_mgr
	ON emp.emp_no = dept_mgr.emp_no
JOIN departments dept
	ON dept.dept_no = dept_mgr.dept_no;

/*List the department of each employee with the following information: 
employee number, last name, first name, and department name. */
select 
	dept_emp.emp_no "employee number",
	emp.first_name "First Name",
	emp.last_name "Last Name",
	dept.dept_name "department name"
from 
	dept_emp, 
	employees as emp, 
	departments dept
where 
	dept_emp.emp_no = emp.emp_no 
	and dept.dept_no = dept_emp.dept_no;


/* List all employees whose first name is "Hercules" and last names begin with "B." */
Select * from employees emp
where 
	emp.first_name = 'Hercules'
	and emp.last_name like 'B%';


/*List all employees in the Sales department, including their employee number, 
last name, first name, and department name. */
select 
	dept_emp.emp_no "employee number",
	emp.first_name "First Name",
	emp.last_name "Last Name",
	dept.dept_name "department name"
from 
	dept_emp, 
	employees as emp, 
	departments dept
where 
	dept_emp.emp_no = emp.emp_no 
	and dept.dept_no = dept_emp.dept_no
	and dept.dept_name = 'Sales';


/*List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name. */
select 
	dept_emp.emp_no "employee number",
	emp.first_name "First Name",
	emp.last_name "Last Name",
	dept.dept_name "department name"
from 
	dept_emp, 
	employees as emp, 
	departments dept
where 
	dept_emp.emp_no = emp.emp_no 
	and dept.dept_no = dept_emp.dept_no
	and ( dept.dept_name = 'Sales'
		OR dept.dept_name = 'Development');


/*In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name. */

select last_name, count(*) "Employee Count" 
from employees
group by last_name
order by 2 desc;








