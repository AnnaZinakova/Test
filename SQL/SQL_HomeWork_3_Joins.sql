--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
	select employee_name, monthly_salary from
	employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
	select employee_name, monthly_salary from
	employees
	join employee_salary on employees.id = employee_salary.employee_id 
	join salary on employee_salary.salary_id = salary.id
	where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
	
   select monthly_salary, employee_name from
   salary 
   join  employee_salary on salary.id = employee_salary.salary_id
   left join  employees on employee_salary.id = employees.id 
   where employees.id is null;

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
   	
   select monthly_salary, employee_name from
   salary 
   join  employee_salary on salary.id = employee_salary.salary_id
   left join  employees on employee_salary.id = employees.id 
   where employees.id is null and monthly_salary < 2000;
  
  -- 5. ����� ���� ���������� ���� �� ��������� ��.
	 select  employee_name, monthly_salary from
 	 salary 
 	 join employee_salary on salary.id = employee_salary.salary_id
 	 right join employees on employee_salary.employee_id = employees.id
 	 where monthly_salary is null;
 
 --6. ������� ���� ���������� � ���������� �� ���������.
	 select employee_name, role_name from
	 employees 
	 join roles_employee on employees.id = roles_employee.employee_id
	 join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������. 
	select employee_name, role_name from
	employees e
	join roles_employee re on e.id = re.employee_id
	join roles r on re.role_id = r.id
	where role_name in ('Senior Java developer','Middle Java developer','Junior Java developer');

-- 8. ������� ����� � ��������� ������ Python �������������.
	select employee_name, role_name from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name in ('Junior Python developer','Middle Python developer','Senior Python developer');

-- 9. ������� ����� � ��������� ���� QA ���������.
	select employee_name, role_name from
	employees e 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
	select employee_name, role_name from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA
	select employee_name, role_name from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	where role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������
	select employee_name, monthly_salary from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id
	where role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
	select employee_name, monthly_salary from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where role_name like 'Middle%';

--14. ������� ����� � �������� Senior ������������
	select employee_name, monthly_salary from
	employees e
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like 'Senior%';

--15. ������� �������� Java �������������
	select monthly_salary from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like '%Java developer%';

--16. ������� �������� Python �������������
	select monthly_salary from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like '%Python developer%';
	
-- 17. ������� ����� � �������� Junior Python �������������
	select employee_name, monthly_salary from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where role_name = 'Junior Python developer';

--18. ������� ����� � �������� Middle JS �������������
	select employee_name, monthly_salary from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where role_name = 'Middle JavaScript developer';

--19. ������� ����� � �������� Senior Java �������������
	select employee_name, monthly_salary from
	employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where role_name = 'Senior Java developer';

-- 20. ������� �������� Junior QA ���������
	select monthly_salary from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	where role_name like '%Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
	select AVG(monthly_salary) from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	where role_name like '%Junior%';

--22. ������� ����� ������� JS �������������
	select SUM(monthly_salary) from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	where role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ���������
	select MIN(monthly_salary) from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	where role_name like '%QA%';

--24. ������� ������������ �� QA ���������
	select MAX(monthly_salary) from
	salary s 
	join employee_salary es on s.id = es.salary_id
	join employees e on es.employee_id = e.id 
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	where role_name like '%QA%';

 --25. ������� ���������� QA ���������
	select COUNT(role_name) as ����������_QA from
	roles r 
	join roles_employee re on r.id = re.role_id 
	join employees e on re.employee_id = e.id
	where role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
	select COUNT(role_name) as ����������_Middle from
	roles r 
	join roles_employee re on r.id = re.role_id 
	join employees e on re.employee_id = e.id
	where role_name like '%Middle%'
	
-- 27. ������� ���������� �������������
	select COUNT(role_name) as ����������_������������� from
	roles r 
	join roles_employee re on r.id = re.role_id 
	join employees e on re.employee_id = e.id
	where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
   select SUM(monthly_salary) as ����_��_������������� from
   salary s 
   join employee_salary es on s.id = es.salary_id 
   join roles r on es.employee_id = r.id 
   join roles_employee re on r.id = re.role_id 
   join employees e on re.employee_id = e.id
   where role_name like '%developer%';
  
--29. ������� �����, ��������� � �� ���� ������������ �� �����������
   select employee_name, role_name, monthly_salary from
   employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
	select employee_name, role_name, monthly_salary from
    employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where monthly_salary between 1700 and 2300
    order by monthly_salary;
   
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
	select employee_name, role_name, monthly_salary from
    employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where monthly_salary < 2300
    order by monthly_salary;
   
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
    select employee_name, role_name, monthly_salary from
    employees e
	join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id 
	join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where monthly_salary in (1100,1500,2000)
    order by monthly_salary;
