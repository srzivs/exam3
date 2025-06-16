--부서번호(DNO)가 10 또는 30 에 속하고, 부서번호별, 부서명별 최고급여가 3000 이상인 사원의 
--부서번호, 부서명, 최고급여를 화면에 표시
SELECT E.DNO, D.DNAME, MAX(SALARY) AS 최고급여 FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO AND E.DNO IN(10,30)
GROUP BY E.DNO, D.DNAME HAVING MAX(SALARY)>=3000;

