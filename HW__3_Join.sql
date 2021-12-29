--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary from
employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary from
employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.

select monthly_salary, employee_name from
salary 
join  employee_salary on salary.id = employee_salary.salary_id
 left join  employees on employee_salary.id = employees.id 
where employees.id is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary, employee_name from
salary 
join  employee_salary on salary.id = employee_salary.salary_id
left join  employees on employee_salary.id = employees.id 
where employees.id is null and monthly_salary < 2000;

  --  5. Найти всех работников кому не начислена ЗП.

 select  employee_name, monthly_salary from
 salary 
 join employee_salary on salary.id = employee_salary.salary_id
 right join employees on employee_salary.employee_id = employees.id
 where monthly_salary is null;

 --6.Вывести всех работников с названиями их должности.

select employee_name, role_name from
employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков

select employee_name, role_name from
employees e
join roles_employee re on e.id = re.employee_id
join roles r on re.role_id = r.id
where role_name in ('Senior Java developer','Middle Java developer','Junior Java developer');

-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name in ('Junior Python developer','Middle Python developer','Senior Python developer');

--  9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name from
employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Manual QA%';

-- 11.Вывести имена и должность автоматизаторов QA
select employee_name, role_name from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary from
employees e
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков
select monthly_salary from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков

select monthly_salary from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
	
select employee_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name = 'Junior Python developer';

--18. Вывести имена и зарплаты Middle JS разработчиков
	
select employee_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name = 'Middle JavaScript developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
	
select employee_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name = 'Senior Java developer';

--20. Вывести зарплаты Junior QA инженеров
	
select monthly_salary from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
	
select AVG(monthly_salary) from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
	
select SUM(monthly_salary) from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
	
select MIN(monthly_salary) from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
	
select MAX(monthly_salary) from
salary s 
join employee_salary es on s.id = es.salary_id
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%QA%';

 --25. Вывести количество QA инженеров
	
select COUNT(role_name) as Количество_QA from
roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id
where role_name like '%QA%';

--  26. Вывести количество Middle специалистов..
	
select COUNT(role_name) as Всего_Middle_специалистов from
roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id
where role_name like '%Middle%'

--  27. Вывести количество разработчиков.
	
select COUNT(role_name) as Всего_разработчиков from
roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id
where role_name like '%developer%';

--  28. Вывести фонд (сумму) зарплаты разработчиков
   
select SUM(monthly_salary) as Сумма_зарплаты_разработчиков from
salary s 
join employee_salary es on s.id = es.salary_id 
join roles r on es.employee_id = r.id 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
   
select employee_name, role_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 230

select employee_name, role_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

 -- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
	
select employee_name, role_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2300
order by monthly_salary;

 -- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
    
select employee_name, role_name, monthly_salary from
employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary in (1100,1500,2000)
order by monthly_salary;