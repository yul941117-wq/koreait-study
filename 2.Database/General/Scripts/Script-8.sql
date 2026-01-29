-- Q1. 사원의 사번(emp_no)과 급여(salary)를 함께 조회하세요.
SELECT e.emp_no, s.salary 
from employees e
join salaries s
on e.emp_no = s.emp_no 
where s.to_date = '9999-01-01';

-- Q2. 사원의 사번(emp_no), 이름(first_name)과 부서 정보(dept_name)를 함께 조회하세요.
SELECT e.emp_no, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de 
ON e.emp_no = de.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no;

-- Q3. 현재 재직 중인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
select e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de 
ON e.emp_no = de.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01';

-- Q5. 사원의 이름(first_name)과 급여(salary)를 급여가 높은 순으로 조회하세요.
SELECT e.emp_no, s.salary 
from employees e
join salaries s
on e.emp_no = s.emp_no 
where s.to_date = '9999-01-01'
order by salary asc;

-- Q6. 부서 이름(dept_name)과 부서별 사원 수(count)를 조회하세요.
select d.dept_name, count(de.dept_no)
from departments d
join dept_emp de 
on d.dept_no = de.dept_no
group by d.dept_name;

-- Q7. 부서별 사원 수가 20000명 이상인 부서의 이름(dept_name)과 사원수(count)만 조회하세요.
select d.dept_name, count(de.dept_no) as count_emp
from departments d
join dept_emp de 
on d.dept_no = de.dept_no
group by d.dept_name
having  COUNT(*) >=20000;

-- Q8. 성별이 F인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
select e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d 
on de.dept_no = d.dept_no
where e.gender = 'f';


-- Q9. 입사일이 1995년 이후인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
select e.first_name, d.dept_name
from employees e 
join dept_emp de
on e.emp_no = de.emp_no 
join departments d 
on de.dept_no = d.dept_no
where e.hire_date >= '1996-01-01';


-- Q10. 부서 이름(dept_name)과 부서별 평균 급여(avg_salary)를 조회하세요.
select d.dept_name, avg(s.salary)





Q11. 현재 재직 중인 사원의 이름, 부서, 급여를 급여 내림차순으로 조회하세요.

Q12. 부서별 평균 급여가 70000 이상인 부서만 조회하세요.

Q13. 직급별 사원 수를 조회하세요.

Q14. 급여 상위 사원의 이름, 직급, 급여를 조회하세요.

--------------------------------------------------------- LEFT JOIN
Q15. 모든 사원과 부서 정보를 조회하세요 (부서가 없어도 포함).
SELECT e.emp_no, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no;

