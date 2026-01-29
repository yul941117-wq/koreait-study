-- Q1. salaries 테이블에서 급여에 1000을 더한 값을 조회하세요.
SELECT *FROM salaries;
SELECT emp_no, salary + 1000 FROM salaries;

-- Q2. salaries 테이블에서 급여에서 세금 10%를 뺀 실수령액을 조회하세요.
SELECT *FROM salaries;
SELECT emp_no, salary * 0.9 FROM salaries;

-- Q3. salaries 테이블에서 연봉을 월급으로 계산하여 조회하세요.
SELECT *FROM salaries;
SELECT salary / 12 AS '월급' FROM salaries;

-- Q4. employees 테이블에서 성별 목록을 중복 없이 조회하세요.
SELECT *FROM employees;
SELECT DISTINCT gender FROM employees;

-- Q5. titles 테이블에서 직급 목록을 중복 없이 조회하세요.
SELECT * from titles;
SELECT distinct title from titles;

-- Q6. employees 테이블에서 사번이 10006인 사원을 조회하세요.
select * from employees
where emp_no = 10006;

-- Q7. salaries 테이블에서 급여가 60000 이상인 사원을 조회하세요.
select * from salaries
where salary > 60000;

-- Q8. employees 테이블에서 입사일이 1995년 이후인 사원을 조회하세요.
select * from employees
where birth_date >= '1995-01-01';

-- Q9. employees 테이블에서 성별이 F인 사원을 조회하세요.
select * from employees
where gender = 'F';

-- Q10. dept_emp 테이블에서 부서 번호가 d005인 사원을 조회하세요.
select * from dept_emp
where emp_no = 'd005';

-- Q11. salaries 테이블에서 급여가 60000 이상이고 80000 이하인 사원을 조회하세요.
select * from salaries
where salary >= 60000 <= 80000;

-- Q12. employees 테이블에서 성별이 M이거나 입사일이 1990년 이전인 사원을 조회하세요.
select * from employees;
where gender = 'M'
and birth_date < '1990-01-01';


-- 모름Q14. dept_emp 테이블에서 부서가 d001이고 현재 재직 중인 사원을 조회하세요.
select * from dept_emp;
where emp_no = 'd001'
and to_date 

-- Q15. salaries 테이블에서 급여가 40000 미만이거나 100000 초과인 사원을 조회하세요.
select * from salaries
where salary > 40000 
and salary < 100000;

-- Q16. employees 테이블에서 성별이 F이면서 1995년 이후 입사한 사원을 조회하세요.
select * from employees
where gender = 'F'
and birth_date >= '1995-01-01';

-- 사이 모름Q17. salaries 테이블에서 급여가 50000부터 70000 사이인 사원을 조회하세요.
select * from salaries
where salary >= '50001'
and salary <= '70001';

-- 사이 모름Q18. employees 테이블에서 입사일이 1990년부터 1995년 사이인 사원을 조회하세요.
select * from employees
where birth_date >= '1989-12-31'
and birth_date <= '1996-01-01';

-- Q19. employees 테이블에서 사번이 10010부터 10020 사이인 사원을 조회하세요.
select * from employees
where emp_no > '10010'
and emp_no < '10020';

-- Q20. salaries 테이블에서 급여가 80000 이상 100000 이하인 사원을 조회하세요.
select * from salaries
where salary >= 80000
and salary <= 100000;

-- Q21. dept_emp 테이블에서 부서 번호가 d003부터 d006 사이인 사원을 조회하세요.
select * from dept_emp
where dept_no >= 'd004'
and dept_no <= 'd007';

-- Q22. employees 테이블에서 이름이 A로 시작하는 사원을 조회하세요.
select * from employees
where first_name like 'A%';

select first_name
from employees
where first_name like 'A%';

-- Q23. employees 테이블에서 이름이 n으로 끝나는 사원을 조회하세요.
select * from employees
where first_name like '%N';

-- Q24. employees 테이블에서 이름에 'an'이 포함된 사원을 조회하세요.
select * from employees
where first_name like '%an%';

-- Q25. employees 테이블에서 이름이 5글자인 사원을 조회하세요.
select * from employees
where first_name like '_____';

-- Q26. employees 테이블에서 성(last_name)에 'son'이 포함된 사원을 조회하세요.
select * from employees
where last_name like '%son%';

-- Q27. titles 테이블에서 to_date가 NULL인 데이터를 조회하세요.
select * from titles
where to_date IS NULL;


-- Q28. dept_emp 테이블에서 부서가 d001, d003, d005인 사원을 조회하세요.
select * from dept_emp;
where  dept_no in ('d001', 'd003','d005');

-- Q29. employees 테이블에서 사번이 10001, 10005, 10010인 사원을 조회하세요.
select * from employees;
where emp_no in ('10001','10005','10010');

insert into employees;
values(4,'1994-12-29','짱구','구', 'M','1');

-- Q30. departments 테이블에서 부서명이 Sales 또는 Development인 부서를 조회하세요.
select * from departments
where dept_name = 'sales'
or dept_name = 'development';

select first_name
from employees
where gender = 'M'
or last_name ='홍';

