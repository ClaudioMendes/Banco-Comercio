alter table Cliente add DataCriacao datetime null

alter table Cliente add constraint kp_cliente primary key (Codigo)

alter table Pedido add constraint pk_pedido primary key (Codigo)

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo)

alter table Pedido add CodigoStatus int

alter table Status add constraint pk_Status primary key (Codigo)

alter table StatusPedidoItem add constraint pk_StatusPedidoItem primary key (Codigo)


update Cliente
set	Codigo = 7,
	Nome = 'José'
where TipoPessoa = 'J'

update Cliente 
set TipoPessoa = 'J'

delete 
from Cliente
where Codigo in (5,4,3,2)

update Pedido set CodigoStatus =1

