create database Comercio 

use Comercio

create table Produtos
(
	Codigo int,
	Nome varchar(100),
	Descricao varchar (200),
	Preco float
)

create table Cliente
(
	Codigo int not null,
	Nome varchar (200) not null,
	TipoPessoa char(1) not null
)

create table Pedido
(
	Codigo int not null,
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

)

create table Status
(
	Codigo int not null,
	Descricao varchar (50) not null
)

Create table StatusPedidoItem
(
	Codigo int not null,
	Descricao varchar (50) not null
)

create table PedidoItemLog
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	CodigoStatusPedidoItem int not null,
	DataMovimento datetime not null
)




