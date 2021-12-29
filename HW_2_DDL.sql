--- 1. Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

	create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);

--- 2. Наполнить таблицу employee 70 строками..
	insert into employees (employee_name)
	values('David Ross'),
	  ('Ashley Medina'),
	  ('Tom Sherman'),
	  ('Beth Hall'),
	  ('Ashley Dixon'),
	  ('Wesley Tate'),
	  ('Marie Collier'),
	  ('Carrie Myers'),
	  ('Martin Olson'),
	  ('David Patterson'),
	  ('Sarah Smith'),
	  ('Darlene Reed'),
	  ('Jennifer Rodriguez'),
	  ('Elizabeth Doyle'),
	  ('Susan Rodriguez'),
	  ('Ivan Dennis'),
	  ('Katie Jensen'),
	  ('Brian Taylor'),
	  ('Jack Dean'),
	  ('Sara Taylor'),
	  ('Aaron Williams'),
	  ('James Kelly'),
	  ('Raymond Williams'),
	  ('Richard Anderson'),
	  ('Franklin Jacobs'),
	  ('John Jones'),
	  ('Jessica Brown'),
	  ('Phyllis Schwartz'),
	  ('William Martin'),
	  ('Violet Pierce'),
	  ('Richard Nguyen'),
	  ('Peter Boone'),
	  ('Helen Carroll'),
	  ('Michael Guerrero'),
	  ('Martha Jones'),
	  ('Judith McKenzie'),
	  ('Kathleen Banks'),
	  ('Darryl Davis'),
	  ('Sean Higgins'),
	  ('James King'),
	  ('Alicia Hoffman'),
	  ('Brent Baker'),
	  ('Denise Woods'),
	  ('Robert Ward'),
	  ('Martin Smith'),
	  ('Kathleen Smith'),
	  ('Irene Williamson'),
	  ('Susan Williams'),
	  ('Joshua Moore'),
	  ('Alice Martinez'),
	  ('Herman Bell'),
	  ('Todd Russell'),
	  ('Sue Robinson'),
	  ('Kim Peters'),
	  ('Elizabeth Allen'),
	  ('Jill Chambers'),
	  ('Jane Colon'),
	  ('Leslie Greene'),
	  ('Nicole Rowe'),
	  ('Guy Patterson'),
	  ('Mary Harris'),
	  ('Carole Williams'),
	  ('David Brown'),
	  ('Jill Edwards'),
	  ('Lloyd Bell'),
	  ('Alfredo Holloway'),
	  ('Tracy Lane'),
	  ('Rebecca Malone'),
	  ('Michelle Flowers'),
	  ('Ellen Peters');

--- 3.Создать таблицу salary
--  -id. Serial  primary key,
--  -monthly_salary. Int, not null

	 create table salary (
	 	id serial primary key,
	 	monthly_salary int not null
	 );

--- 4. Наполнить таблицу salary 15 строками:

	insert into salary (monthly_salary)
	values(1000),
	      (1100),
	      (1200),
	      (1300),
	      (1400),
	      (1500),
	      (1600),
	      (1700),
	      (1800),
	      (1900),
	      (2000),
	      (2100),
	      (2200),
	      (2300),
	      (2400),
	      (2500);

--- 5.Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

	     create table employee_salary(
	     id serial primary key,
	     employee_id int not null unique,
	     salary_id int not null
	     );

--- 6.Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

	    insert into employee_salary (employee_id,salary_id)
	    values (3,7),
	           (1,4),
	           (5,9),
	           (40,13),
	           (23,4),
	           (11,2),
	           (52,10),
	           (15,13),
	           (26,4),
	           (16,1),
	           (33,7),
	           (88,16),
	           (71,3),
	           (72,4),
	           (73,11),
	           (74,12),
	           (75,2),
	           (76,8),
	           (77,14),
	           (78,1),
	           (79,5),
	           (6,8),
	           (7,12),
	           (8,3),
	           (9,10),
	           (10,5),
	           (12,14),
	           (13,13),
	           (14,4),
	           (35,6),
	           (21,10),
	           (43,7),
	           (63,1),
	           (36,9),
	           (41,5),
	           (51,4),
	           (62,11),
	           (56,16),
	           (55,15),
	           (45,10);

	   --- Хотя бы одно значение з/п никому не присваивается     
	        update employee_salary 
	        set salary_id = 14 
	        where salary_id = 15;


--- 7.Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

	          create table roles(
	          id serial primary key,
	          role_name int not null unique
	          );

--- 8.Поменять тип столба role_name с int на varchar(30)

	         alter table roles alter column role_name type varchar(30);

--- 9.Наполнить таблицу roles 20 строками

	        insert into roles(role_name)
	        values('Junior Python developer'),
	              ('Middle Python developer'),
	              ('Senior Python developer'),
	              ('Junior Java developer'),
	              ('Middle Java developer'),
	              ('Senior Java developer'),
	              ('Junior JavaScript developer'),
	              ('Middle JavaScript developer'),
	              ('Senior JavaScript developer'),
	              ('Junior Manual QA enginee'),
	              ('Middle Manual QA engineer'),
	              ('Senior Manual QA engineer'),
	              ('Project Manager'),
	              ('Designer'),
	              ('HR'),
	              ('CEO'),
	              ('Sales manager'),
	              ('Junior Automation QA engineer'),
	              ('Middle Automation QA engineer'),
	              ('Senior Automation QA engineer');

--- 10.Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


	             create table roles_employee(
	             id serial primary key,
	             employee_id int not null,
	             role_id int not null,
	             foreign key (employee_id)
	               references employees(id),
	             foreign key (role_id)
	               references roles(id)
	             );

--- 11.Наполнить таблицу roles_employee 40 строками:

	            insert into roles_employee(employee_id,role_id)
	            values(7,2),
	                  (20,4),
	                  (3,9),
	                  (5,13),
	                  (23,4),
	                  (11,2),
	                  (10,9),
	                  (22,13),
	                  (21,3),
	                  (34,4),
	                  (6,7),
	                  (31,20),
	                  (51,14),
	                  (62,1),
	                  (41,5),
	                  (15,6),
	                  (1,7),
	                  (33,8),
	                  (25,7),
	                  (66,10),
	                  (63,11),
	                  (13,12),
	                  (14,13),
	                  (15,14),
	                  (24,15),
	                  (26,16),
	                  (30,17),
	                  (40,18),
	                  (50,19),
	                  (60,20),
	                  (61,16),
	                  (18,18),
	                  (19,6),
	                  (33,9),
	                  (51,10),
	                  (52,3),
	                  (43,4),
	                  (69,8),
	                  (27,9),
	                  (17,11);