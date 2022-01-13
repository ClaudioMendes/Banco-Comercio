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

select * from Cliente

insert into Cliente (Codigo, Nome, TipoPessoa ) values (1, 'Thiago', 'F');
insert Cliente (Codigo, Nome, TipoPessoa ) values (2, 'Thiago', 'F');
insert Cliente values (3, 'Thiago', 'F');
insert Cliente values (4, 'Thiago', 'F'), (5, 'Thiago', 'F'),(1, 'Thiago', 'J');

 
update Cliente
set	Codigo = 7,
	Nome = 'José'
where TipoPessoa = 'J'

update Cliente 
set TipoPessoa = 'J'

delete 
from Cliente
where Codigo in (5,4,3,2)

select * 
from Cliente
where Codigo = 1
and TipoPessoa = 'j'

select * from Produtos

insert Produtos values (1,'Caneta', 'Caneta azul', 1.5)
insert Produtos values (2,'Caderno', 'Caderno 10 matérias', 20.99)

select * from Pedido

insert Pedido values (1, getdate(),0,3,7)
insert Pedido values (2, getdate(),0,22.49,1)

select * from PedidoItem

insert PedidoItem values (1, 1, 1.50, 2)
insert PedidoItem values (2, 1, 1.50, 1)
insert PedidoItem values (2, 2, 20.99, 1)

alter table Cliente add DataCriacao datetime null

insert Cliente (Codigo, Nome, TipoPessoa) values (2,'Higor', 'F')

select isnull(DataCriacao, getdate()), *
from Cliente

select *,
		case
			when TipoPessoa ='J' then 'Juridica'
			when TipoPessoa ='F' then 'Fisica'
			else 'Pessoa Indefinida'
		end
from Cliente

select *, convert(varchar, DataSolicitacao, 103)
from Pedido 

alter table Cliente add constraint kp_cliente primary key (Codigo)

insert Cliente values ('Julio','J',getdate())

alter table Pedido add constraint pk_pedido primary key (Codigo)

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo)

alter table Pedido add CodigoStatus int

update Pedido set CodigoStatus =1

select * from Pedido

create table Status
(
	Codigo int not null,
	Descricao varchar (50) not null
)

alter table Status add constraint pk_Status primary key (Codigo)

Create table StatusPedidoItem
(
	Codigo int not null,
	Descricao varchar (50) not null
)
alter table StatusPedidoItem add constraint pk_StatusPedidoItem primary key (Codigo)

create table PedidoItemLog
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	CodigoStatusPedidoItem int not null,
	DataMovimento datetime not null
)

insert StatusPedidoItem values ('Separação Solicitada')
insert StatusPedidoItem values ('Em Separação')
insert StatusPedidoItem values ('Embalado')

insert Pedido values (getdate(), 0, 10, 1, 1)

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem

select *
from	Cliente cli
inner	join Pedido ped
on		cli.Codigo = ped.CodigoCliente

select *
from	 Cliente cli
left	join Pedido ped
on		cli.Codigo = ped.CodigoCliente
where	ped.TotalPedido >10

select cli.Nome,
		ped.TotalPedido,
		case
			when cli.TipoPessoa = 'F' then 'Fisica'
			else 'Juridica'
		end TipoPessoa
from	Pedido ped
right	join Cliente cli
on		cli.Codigo = ped.CodigoCliente

select	t4.Codigo,
		t4.Descricao,
		sum(t1.Preco * t1.Quantidade) somatoria
from	PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto
group by	t4.Codigo,
			t4.Descricao
having sum	(t1.Preco * t1.Quantidade) > 10

select	cli.Codigo,
		cli.Nome,
		count(ped.Codigo)
from	 Cliente cli
left	join Pedido ped
on		cli.Codigo = ped.CodigoCliente
group	by cli.Codigo,
		cli.Nome


select *
from	 Cliente cli
where	cli.Codigo not in (select CodigoCliente from Pedido)



