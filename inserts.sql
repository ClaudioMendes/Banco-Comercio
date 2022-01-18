insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Thiago', 'F');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Claudio', 'F');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Gabriel', 'F');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Gustavo', 'F');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Beatriz', 'F');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Ana', 'J');
insert into Cliente (Nome, TipoPessoa,DataCriacao)  values ('Higor', 'F')
insert into Cliente (Nome, TipoPessoa,DataCriacao) values ('Julio','J',getdate())

insert into Produtos (Nome, Descricao, Preco) values ('Caneta', 'Caneta azul', 1.5)
insert into Produtos (Nome, Descricao, Preco) values ('Caderno', 'Caderno 10 matérias', 20.99)

insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0,3,7,1)
insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0,22.49,1,1)
insert into Pedido (DataSolicitacao, FlagPago, TotalPedido, CodigoCliente, CodigoStatus) values (getdate(),0, 10, 1, 1)


insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (1, 2, 1.50, 2)
insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (2, 3, 1.50, 1)
insert into PedidoItem (CodigoPedido, CodigoProduto, Preco, Quantidade) values (3, 1, 20.99, 1)

insert into StatusPedidoItem (Descricao) values ('Separação Solicitada')
insert into StatusPedidoItem (Descricao) values ('Em Separação')
insert into StatusPedidoItem (Descricao) values ('Embalado')

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem