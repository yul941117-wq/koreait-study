1.연산자 종류
	- () : 우선 순위 높이기 위해서 사용.
	- 산술 연산자 (*,/,+,-) : 사칙 연산
	- 비교 연산자 (=,!=,<>,<,<=,>,>=)
	- is null, like, in 
		>is null : 빈 값인지 확인
		>like : 문자열 패턴 검색 (%는 0글자 이상, _는 무조건 1글자)
		>in : 여러 값을 비교할 때 사용(EX. 컬럼명 in('M','W'))
	-between 이상값 and 이하값 (범위 검색)
	-not : 논리 부정(참을 거짓으로, 거짓을 참으로)
	-and : 두 피연산자의 조건이 모두 같다면 참
	-or : 두 피연산자 중 하나라도 같아면 참
2.정렬
	-order by 컬럼명
		> 옵션1 : ASC(기본값) 오름차순
		> 옵션2 : desc 내림차순
		
3.그룹 함수
	- 여러 개의 행을 묶어 연산하여 결과를 반환
	-아래에서 작성할 그룹함수 외에도 다양한 그룹함수를 지원
	
4.그룹 함수 종류(집계함수)
	-MAX(컬럼명) : 최댓값
	-MIN(컬럼명) : 최솟값
	-AVG(컬럼명) : 평균
	-SUM(컬럼명) : 합계
	-COUNT(컬럼명) : 반환된 행의 개수
	
5.group by
	-조회된 데이터의 여러개 행을 트 ㄱ정 컬럼의 값을 기준으로 묶어 그룹화
	-일반적으로 그룹함수와 함께 사용
	
	
6.having
	-그룹 함수를 이용한 조건을 작성할 때 주로 사용
	-EX) COUNT(*) >=100
	-주의 ㅣ 문법상 group by 뒤에 위치해야 함
	
7.select 실행 순서
	- 맨 처음 FROM으로 테이블을 가져옴
	- 이후 아래로 쭉 실행 (모두 실행되거나, order by 를 만나기 전까지)
	- 이후 select로 필요한 컬럼만 조회
	- order by 가 있다면 마지막으로 실행
	-EX) from-> where-> group by-> having-> select-> order by 
	
8.join
	- 두 개 이상의 테이블의 데이터를 모두 조회할 때 사용
	- 종류 : inner join, left join, right join, ...
	
9. inner join
	- ON절에서 두 테이블의 공통된 값이 있을 경우에만 조회
	
10.left join
	-ON절에서 두 테이블의 공통된 값이 없어도 기준 테이블(from 테이블)은 무조건 조회
	-합쳐진 테이블은 값이 없어도 NULL로 채워져서 조회됨
	
11.right join
	-ON절에서 두 테이블의 공통된 값이 없어도 조인된 테이블(join 테이블)은 무조건 조회
	- 기준 테이블은 값이 없어도 NULL로 채워져서 조회됨
	
	12. 서브 쿼리
- SQL 쿼리 안에 포함된 또 다른 쿼리
- 쿼리안에 쿼리가 있는 구조

13. 조건 서브 쿼리
- WHERE절에 사용하는 서브쿼리
- 단일행 서브쿼리 : 서브쿼리의 실행 결과의 데이터가 1개인 서브쿼리
- 다중행 서브쿼리 : 서브쿼리의 실행 결과의 컬럼이 2개 이상인 서브쿼리
- 다중열 다중행 서브쿼리 : 서브쿼리의 실행 결과의 데이터가 2개 이상, 컬럼이 2개 이상인 서브쿼리

14. 단일행 서브쿼리
- 결과 값의 데이터(행)가 1개인 서브쿼리
- 단일행 비교 연산자 사용
  > 단일행 비교 연산자 : =, <=, <, >=, >, !=
- 예시) SELECT first_name, last_name, FROM employees
       WHERE emp_no = (SELECT max(emp_no) FROM employees)
       
15. 다중행 서브쿼리
- 결과 값의 데이터(행)가 2개 이상인 서브쿼리
- 다중행 비교 연산자 사용
  > 다중행 비교 연산자 : IN, ALL, ANY, ...
- 예시)  SELECT emp_no, salary FROM salaries
        WHERE salary IN (SELECT salary FROM salaries)                                   
  
16. 다중열 다중행 서브쿼리
- 결과 값의 데이터와 컬럼의 개수가 2개 이상인 서브쿼리
  - 예시) SELECT emp_no, title, to_dete FROM titles
         WHERE (emp_no, to_date) IN (SELECT emp_no, max(to_date) FROM titles GROUP BY emp_no)
17. 인라인 뷰
- FROM절에 서브쿼리를 사용하는 방식
- 서브쿼리 수행 결과가가 테이블처럼 사용됨
- 예시) SELECT * FROM (SELECT dept_no, count(*) AS cnt FROM dept_emp
                     GROUP BY dept_no) d;
- 주의1) 반드시 인라인 뷰 작성 후 테이블 별칭을 지어줘야 함
- 주의2) 그룹 함수 사용 시 별칭을 지어줘야 메인쿼리에서 사용 가능
- 참고) 조건은 되도록 메인 쿼리에서 작성 해주는 것이 성능상 좋음
	
	
	
	
	
	
	