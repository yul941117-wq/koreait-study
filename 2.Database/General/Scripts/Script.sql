SELECT *FROM salaries;
SELECT emp_no, salary / 12 AS '월급' FROM salaries;
SELECT emp_no + 50, first_name FROM employees
WHERE first_name = '길동';

SELECT DISTINCT  gender FROM employees;

--salarie 테이블에서 salary 컬럼의 값을 월급이라고 가정
--1. 월급(기존값)
--2. 예상 연봉(salary * 12) 별칭은 "예상 연봉"
--3. 5% 인상 후의 예상 연봉 (salary * 12 * 1.05) 별칭은 "인상 후 예상 연봉"
SELECT *FROM salaries;
SELECT salary FROM salaries;
SELECT salary / 12 AS '예상 연봉' FROM salaries;
SELECT salary * 12 * 1.05 AS '인상 후 예상 연봉' FROM salaries;

SELECT emp_no, salary, from_date, to_date FROM salaries
WHERE salary >= 80000;

SELECT * FROM employees
WHERE emp_no < 10005;

-- 입사일이 1960년 1월 1일 이후이면서 서별이 남자인 직원 조회
SELECT * FROM employees;
SELECT * FROM employees
WHERE birth_date > '1960-01-01'
AND gender = 'M';

SELECT * FROM titles
WHERE title = 'Senior Engineer'
OR title = 'Engineer';

--salaries 테이블에서 연봉이 50000 이상이면서 60000 이하인 직원 조회
SELECT * FROM salaries
WHERE salary >= 50000
AND salary <=60000;

--salaries 테이블에서 연봉이 50000 이상이면서 60000 이하인 직원 조회

SELECT * FROM salaries
WHERE salary BETWEEN 50000 AND 60000;

SELECT * FROM employees
WHERE hire_date BETWEEN '1995-01-01' AND '1995-12-31';

SELECT * FROM employees
WHERE first_name LIKE 'N%';

SELECT * FROM employees
WHERE first_name LIKE '%en';

SELECT * FROM employees
WHERE first_name LIKE '%ar%';

SELECT * FROM employees
WHERE first_name LIKE '_di';

SELECT * FROM employees
WHERE first_name LIKE 'G__';

SELECT * FROM employees
WHERE first_name NOT LIKE 'G__';

-- IS NULL 
 SELECT * FROM titles
 WHERE to_date IS NULL;
 
  SELECT * FROM titles
 WHERE to_date IS NOT NULL;
  
 -- IN 여러개의 값을 찾고싶을 때 사용
  SELECT * FROM departments
  WHERE dept_no IN('d005', 'd006');
 -- IN 키워드 안쓸 때
  WHERE dept_no = 'd005'
  OR dept_no = 'd006'

 -- order by--
select * from employees
order by birth_date desc;

select * from titles
order by  to_date desc;

select max(salary) from salaries;
select min(salary) from salaries;

select avg(salary) from salaries;
select sum(salary) from salaries;
select count(*) from salaries;

select count(*) as '직원 수' from employees;

-- 문제--
select count(*) as '직원 수' from titles
where title = 'engineer';

select count(*) as '직원 수' from employees
where birth_date > '1965-01-01';

select max(emp_no) from employees;

select min(emp_no) from employees;



select max(emp_no) from employees
group by birth_date ;

-- 부서별 직원 수 구하기 depr_emp
-- -  부서 번호(dept_no) 조회

select count(*),dept_no from dept_emp
group by dept_no ;

select count(*),gender from employees
group by gender ;

select count(*),title from titles
group by title
order by count(*), title desc;

select count(*),title from titles
group by title
having count(*) >= 100000
order by title desc;

-- dept_emp에서 직원 수가 5만 이상인 부서만 조회

select count(*), dept_no from dept_emp
group by dept_no
having count(*) >= 50000;

-- 현재 재직중인 직원들 중 직무별 직원 수가 200명 미만인 직만 조회
-- to_date가 9999-01-01이 재직중
select title, count(*) from titles 
where to_date = '9999-01-01'
group by title
having count(*) < 200;
