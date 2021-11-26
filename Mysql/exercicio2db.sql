create database  db_ecommerce ;

create table  tb_produtos 
(
id bigint auto_increment,
produto varchar ( 200 ),
genero varchar ( 20 ),
categoria varchar ( 150 ),
valor decimal ( 5 , 2 ),
primary key (id)
);

insert into tb_produtos (produto, genero, categoria, valor) values ( " blusa de manga " , " feminino " , " blusa " , 100.00 );
insert into tb_produtos (produto, genero, categoria, valor) values ( " camisa regata " , " Masculino " , " camiseta " , 50.00 );
insert into tb_produtos (produto, genero, categoria, valor) values (" calça jeans" , " masculino " , " calça jeans " , 200.00 );
insert into tb_produtos (produto, genero, categoria, valor) values ( " vestido colorido  " , " feminino " , " vestido " , 300.00 );


select  *  from tb_produtos;
select  * from tb_produtos where valor <  300.00 ;
