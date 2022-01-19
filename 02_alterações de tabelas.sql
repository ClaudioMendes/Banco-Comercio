alter table Cliente add DataCriacao datetime null

alter table Pedido add CodigoStatus int

alter table Cliente add constraint fk_Cliente_pedido foreign key (CodigoPedido) references Pedido (Codigo)

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo)

alter table Pedido add constraint fk_pedido_cliente foreign key (CodigoCliente) references Cliente (Codigo) 

alter table PedidoItemLog add constraint fk_PedidoItemLog_PedidoItem foreign key(CodigoPedido, CodigoProduto) references PedidoItem (CodigoPedido, CodigoProduto)

alter table PedidoItemLog add constraint fk_PedidoItemLog_StatusPedidoItem foreign key (CodigoStatusPedidoItem) references StatusPedidoItem (Codigo)




