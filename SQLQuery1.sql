create table tb_admin
(
	id_admin int identity primary key,
	admin_first_name nvarchar(max) NOT NULL,
	admin_last_name nvarchar(max) NOT NULL,
	admin_father_name nvarchar(max),
	admin_email nvarchar(max),
	admin_password nvarchar(max)
)
create table tb_university
(
      id_university int identity primary key,
	id_admin int foreign key references tb_admin(id_admin),
	university_name nvarchar(max),
	university_email nvarchar(max),
	university_password nvarchar(max),
	university_country nvarchar(max),
)
create table tb_ministry
(
      id_ministry int identity primary key,
	id_admin int foreign key references tb_admin(id_admin),
	ministry_name nvarchar(max),
	ministry_email nvarchar(max),
	ministry_password nvarchar(max),
)
create table tb_students_name
(
      id_students int identity primary key,
	id_university int foreign key references
        tb_university(id_university),
	student_id_number int,
	students_first_name nvarchar(max) NOT NULL,
	students_last_name nvarchar(max) NOT NULL,
	students_father_name nvarchar(max),
	students_mother_name nvarchar(max),
	students_date date,
	students_avg float,
	students_profession nvarchar(max),
	students_resident_country nvarchar(max),
	students_shahid nvarchar(max),
)
create table tb_vacancy
(
      id_vacancy int identity primary key,
	vacancy_name nvarchar(max),
	vacancy_count int,
	vacancy_avg float,
	vacancy_type nvarchar(max)
)
create table tb_vac_mini
(
    	id_ministry int foreign key references tb_ministry(id_ministry),
	id_vacancy int foreign key references tb_vacancy(id_vacancy),
	primary key(id_ministry,id_vacancy)
)
create table tb_emp_condition
(
      id_emp_condition int identity primary key,
	id_vacancy int foreign key references tb_vacancy(id_vacancy),
	emp_condition_name nvarchar(max),
	emp_condition_type nvarchar(max)
)

create table tb_graduate
(
      id_graduate int identity primary key,
	id_students int foreign key references
           tb_students_name(id_students),
	graduate_id_number int,
	graduate_first_name nvarchar(max) NOT NULL,
	graduate_last_name nvarchar(max) NOT NULL,
	graduate_father_name nvarchar(max),
	graduate_mother_name nvarchar(max),
	graduate_date date,
	graduate_avg float,
	graduate_profession nvarchar(max),
	graduate_resident_country nvarchar(max),
	graduate_shahid nvarchar(max),
	graduate_email nvarchar(max),
	graduate_password nvarchar(max),
)
create table tb_desire
(
      id_desire int identity primary key,
	id_graduate int foreign key references tb_graduate(id_graduate),
	id_vacancy int
)
create table tb_grad_vac
(
      id_graduate int foreign key references tb_graduate(id_graduate),
	id_vacancy int foreign key references tb_vacancy(id_vacancy),
	primary key(id_vacancy,id_graduate)
)
create table tb_result
(
      id_result int identity primary key,
	id_ministry int foreign key references tb_ministry(id_ministry),
	id_graduate int foreign key references tb_graduate(id_graduate)
)
create table tb_phone
(
      id_phone int identity primary key,
	phone nvarchar(10) NOT NULL,
      id_admin int foreign key references tb_admin(id_admin),
	id_unversity int foreign key references
          tb_university(id_university),
	id_ministry int foreign key references tb_ministry(id_ministry),
	id_graduate int foreign key references tb_graduate(id_graduate)
)
