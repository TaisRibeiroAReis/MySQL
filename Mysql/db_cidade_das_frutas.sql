create database db_cidade_das_frutas

use db_cidade_das_frutas;

create table tb_produtos (
id bigint not null auto_increment,
nome varchar ( 255 ) not null ,
quantidade int ,
preco decimal  not null,
codigo int,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco, codigo)  values ( " tomate " , 10 , 60.00, 1 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " maça " , 2 , 8.00, 1 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " limão " , 1 , 3.00, 1 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " beteraba " , 3 , 20.00, 2 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " couve" , 1 , 3.00, 3 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " morango " , 10 , 50.00, 2 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " brocolis " , 10 , 50.00, 3 );
insert into tb_produtos (nome, quantidade, preco, codigo) values ( " cenoura " , 1 , 8.00 , 2 );

create table tb_categoria (
id bigint auto_increment,
tipo varchar ( 255 ) not null ,
codigo int,
foreign key (produtos_id) references tb_produtos (id) 
);

insert into tb_categoria (tipo, codigo)  values ( " frutas " , 1 );
insert into tb_categoria (tipo, codigo)  values ( " legumes " , 2 );
insert into tb_categoria (tipo, codigo)  values ( " verduras " , 3 );

select * from tb_produtos;

select * from tb_categoria;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id 
WHERE tb_categoria.id = 2;