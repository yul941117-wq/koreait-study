-- Q1. employees 테이블에서 사원을 사번 기준으로 오름차순 정렬하여 조회하세요.
select * from employees
order by emp_no asc;

-- Q2. employees 테이블에서 사원을 사번 기준으로 내림차순 정렬하여 조회하세요.
select * from employees
order by emp_no desc;

-- Q3. salaries 테이블에서 급여를 높은 순으로 정렬하여 조회하세요.
select * from salaries
order by salary asc;

-- Q4. employees 테이블에서 입사일 기준으로 오래된 순서대로 정렬하여 조회하세요.
select * from employees
order by hire_date asc;

-- Q5. employees 테이블에서 성별 기준으로 정렬한 뒤-> 사번 기준으로 정렬하여 조회하세요.정렬 2번 ->뒤에 그대로 이어 쓰면됨
select * from employees
order by gender asc, emp_no asc;
-----------------------------------------------
-- Q6. salaries 테이블에서 가장 높은 급여를 조회하세요.
select * from salaries;
select max(salary) from salaries;

-- Q7. salaries 테이블에서 가장 낮은 급여를 조회하세요.
select min(salary) from salaries;

-- Q8. salaries 테이블에서 평균 급여를 조회하세요.
select avg(salary) from salaries;

-- Q9. salaries 테이블에서 전체 급여 합계를 조회하세요.
select sum(salary) from salaries;
------------------------------------------------------
-- Q10. employees 테이블에서 전체 사원 수를 조회하세요.
select * from employees;
select count(*) from employees;

-- Q11. employees 테이블에서 성별별 사원 수를 조회하세요.
select count(*),gender from employees
group by gender ;

-- Q12. dept_emp 테이블에서 부서별 사원 수를 조회하세요.
select * from dept_emp;
select count(*),dept_no from dept_emp
group by dept_no ;

-- Q13. titles 테이블에서 직급별 사원 수를 조회하세요.
select * from titles;
select count(*),title from titles
group by title ;

-- Q14. salaries 테이블에서 사번별 평균 급여를 조회하세요.
select * from salaries;
select emp_no, avg(salary) from salaries
group by emp_no ;

-- Q15. employees 테이블에서 입사 연도별 사원 수를 조회하세요.
select * from employees;
select count(*), hire_date from employees
group by hire_date ;

-- Q16. 성별별 사원 수 중 100000명 이상인 경우만 조회하세요.
select count(*), gender from employees
group by gender
having count(*) >= 100000;

-- Q17. 부서별 사원 수 중 20000명 이상인 부서만 조회하세요.
select * from dept_emp;
select count(*), dept_no from dept_emp
group by dept_no
having count(*) >= 20000;

-- Q18. 직급별 사원 수 중 50000명 이상인 직급만 조회하세요.
select * from titles;
select count(*), title from titles
group by title
having count(*) >= 50000;

-- Q19. 사번별 평균 급여가 80000 이상인 사원만 조회하세요.
select * from salaries;
select count(*), avg(salary)  from salaries
group by salary
having avg(salary) >= 80000;

-- Q20. 입사 연도별 사원 수 중 10000명 이상인 연도만 조회하세요.
select * from employees;
select year(hire_date), count(*) from employees
group by year(hire_date)
having count(*) >= 10000;

