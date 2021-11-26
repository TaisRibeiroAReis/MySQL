/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. */
create database db_rh ;

use db_rh;

create table  tb_funcionarios 
(
id bigint auto_increment,
nome varchar (255) not null ,
salario decimal ( 6 , 2 ),
cargo varchar ( 100 ),
horarioTrabalho int ,
primary key (id)
);
insert into tb_funcionarios (nome,  cargo, Salario, horarioTrabalho) values ( " Taís " , " desenvolvedora ", 6000.00 , 160);
insert into tb_funcionarios (nome,  cargo, Salario, horarioTrabalho) values ( " Guilherme " , " UX " , 5000.00, 160 );
insert into tb_funcionarios (nome,  cargo, Salario, horarioTrabalho) values ( " Luciana" , " QA " , 5000.00, 160);

select  *  from tb_funcionarios;

select  *  from tb_funcionarios where salario >  2000 ;
select  *  from tb_funcionarios where salario <  2000 ;

drop  table tb_funcionarios;
