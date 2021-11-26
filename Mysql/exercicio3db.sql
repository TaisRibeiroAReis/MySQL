create database db_escola ;
use db_escola;

create table tb_alunos 
(
id bigint auto_increment,
nome varchar ( 250 ),
datanascimento date ,
classe int ,
media decimal ( 4 , 2 ),
primary key (id)
);

insert into tb_alunos (nome, datanascimento, classe, media) values ( " Joao Silva " , " 2000/07/28 " , 1 , 6.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Mariana chagas " , " 2000/10/30 ", 2 , 10.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Lucas cardim " , " 2000/05/20 " , 2 , 10.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Juliana martins " , " 2000/06/30 " , 1 , 9.50 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Joaquim Augusto" , " 2000/01/27 " , 1 , 9.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Josiane souza " , " 2000/12/23 " , 2 , 8.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values ( " Isis Ribeiro " , " 2000/01/02 " , 2 , 10.00 );
insert into tb_alunos (nome, datanascimento, classe, media) values  ( " Asaph Amorim " , " 2000/09/21 " , 1 , 8.50 );


select  *  from tb_alunos;
select  *  from tb_alunos where media <  7.00 ;
select  *  from tb_alunos where media >  7.00 ;

update tb_alunos set media =  8.00  where id =  6 ;
update tb_alunos set media =  9.00  where id =  5 ;