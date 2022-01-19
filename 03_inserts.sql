insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Thiago', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Claudio', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Gabriel', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Gustavo', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Beatriz', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Ana', 'J',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Higor', 'F',getdate());
insert into Cliente (Nome, TipoPessoa,DataCriacao) values  ('Julio','J',getdate());

insert into StatusPedidoItem (Descricao) values ('Separação Solicitada')
insert into StatusPedidoItem (Descricao) values ('Em Separação')
insert into StatusPedidoItem (Descricao) values ('Embalado')

insert into Produtos (Nome, Descricao, Preco) values ('Caneta', 'Caneta azul', 1.5)
insert into Produtos (Nome, Descricao, Preco) values ('Caderno', 'Caderno 10 matérias', 20.99)

insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0,3,7,1)
insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0,22.49,1,1)
insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0, 10, 1, 1)


insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (1, 1, 1.50, 1)
insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (2, 2, 1.50, 2)
insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (3, 3, 20.99, 3)

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem