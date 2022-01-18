
--exibir todos clientes que tiverem o codigo =1 e pessoa juridica =j
select * 
from Cliente
where Codigo = 1
and TipoPessoa = 'j'


--caso a tabela tipo pessoa =j exibir Juridica, caso for =f exibir pessoa Fisica. caso não seja nenhuma das duas opções exibir pessoa indefinida
select *,
		case
			when TipoPessoa ='J' then 'Juridica'
			when TipoPessoa ='F' then 'Fisica'
			else 'Pessoa Indefinida'
		end
from Cliente


--exibir data solicitação em padrão brasileiro
select *, convert(varchar, DataSolicitacao, 103)
from Pedido 



-- exibir primeiro todos clientes que tiverem o codigo do cliente = ao codigo do produto e abaixo exibir todos pedidos que o totalPedido forem maior que 10
select *
from	 Cliente cli
left	join Pedido ped
on		cli.Codigo = ped.CodigoCliente
where	ped.TotalPedido >10


--exibir pessoa juridica ou fisica no lugar de F ou J e exibir todas as compras feitas 
select cli.Nome,
		ped.TotalPedido,
		case
			when cli.TipoPessoa = 'F' then 'Fisica'
			else 'Juridica'
		end TipoPessoa
from	Pedido ped
right	join Cliente cli
on		cli.Codigo = ped.CodigoCliente



--exibir o total que foi vendido de cada produto caso o total seja maior que 10
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

-- exibir quantidade de compras feitas pelo cliente
select * from Pedido
select	cli.Codigo,
		cli.Nome,
		count(ped.Codigo)
from	 Cliente cli
left	join Pedido ped
on		cli.Codigo = ped.CodigoCliente
group	by cli.Codigo,
		cli.Nome

