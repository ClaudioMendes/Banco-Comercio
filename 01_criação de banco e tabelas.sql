create database Comercio 

use Comercio

create table Produtos 
(
	Codigo int identity(1,1) primary key,
	Nome varchar(100),
	Descricao varchar (200),
	Preco float
)

create table Cliente
(
	Codigo int identity(1,1) primary key,
	Nome varchar (200) not null,
	TipoPessoa char(1) not null,
)

create table Pedido
(
	Codigo int identity(1,1) primary key,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null 
)

create table PedidoItem
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null,
	primary key (CodigoPedido, CodigoProduto)

)



Create table StatusPedidoItem
(
	Codigo int identity(1,1) primary key,
	Descricao varchar (50) not null
)

create table PedidoItemLog
(
	CodigoPedido int  not null,
	CodigoProduto int not null,
	CodigoStatusPedidoItem int not null,
	DataMovimento datetime not null
)

