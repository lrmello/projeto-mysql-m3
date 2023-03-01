# Projeto do Módulo 3 do Curso de Desenvolvimento WEB Full-Stack da Resilia Educação - RD - Banco de Dados MySQL :computer:

# 📋 Descrição

<p style="font-size: 16px">O projeto teve como objetivo a criação de um banco de dados para um E-commerce, que o tema escolhido foi uma lanchonete. Fizemos a modelagem utilizando o DB-Diagram e posteriormente criamos os scripts para a criação de tabelas (CREATE TABLE), a inserções dos elementos dentro de cada tabela (INSERT INTO), e a atualização das tabelas (UPDATE).</p>

# :hammer: Modelagem
<p style="font-size: 16px">Criamos um banco com 4 entidades (Clientes, Produtos, Pedidos e Item Pedido) e com 3 relações entre elas, sendo entre o Item Pedido e Produtos, Item Pedido e Pedidos a relação de muitos para muitos, e entre Cliente e Pedidos e um para muitos.  </p>

<img>![dbDiagram](https://user-images.githubusercontent.com/118377204/221215116-ba339d79-a04d-4092-8fdd-7ab20a4de3ee.png)</img>

# 📑 Algumas Perguntas:
<p style="font-size: 16px">Com as tabelas alimentadas com os dados, podemos responder as seguintes perguntas que o dono do comércio pode ter como por exemplo: </p>
<p style="font-size: 16px">Quanto cada cliente gastou? Em ordem do maior gasto para o menor gasto.</p>

```sql
select * from  gasto_total_por_cliente
```
<p style="font-size: 16px">Quanto foi vendido de cada item? Em ordem do mais vendido para o menos vendido.</p>


```sql
select * from total_produtos_vendidos 
```

<p style="font-size: 16px">Listar pedidos por datas: <b>PedidosPorData(dataInicio, dataFim)</b></p>

```sql
call PedidosPorData('2023-02-01', '2023-02-28');
```

<p style="font-size: 16px">Listar pedidos por cliente: <b>PedidosPorCliente(idCliente)</b></p>

```sql
call PedidosPorCliente(2);

```

<p style="font-size: 16px">Listar pedidos por produto: <b>PedidosPorProduto(idProduto)</b></p>

```sql
call PedidosPorProduto(1);
```

<p style="font-size: 16px">Listar pedidos por data e cliente: <b>PedidosPorDataCliente(dataInicio, dataFim, idCliente)</b></p>

```sql
call PedidosPorDataCliente('2023-02-01', '2023-02-28', 1);
```

<p style="font-size: 16px">Listar pedidos por data e produto:<b>PedidosPorDataProduto(dataInicio, dataFim, idProduto)</b></p>

```sql
call PedidosPorDataProduto('2023-02-20', '2023-02-28', 5);
```

<p style="font-size: 16px">Listar produtos mais vendidos por período: <b>ProdutosMaisVendidosPorPeriodo(dataInicio, dataFim)</b></p>

```sql
call ProdutosMaisVendidosPorPeriodo('2023-02-01', '2023-02-28');
```

<p style="font-size: 16px">Listar produtos menos vendidos por período: <b>ProdutosMenosVendidosPorPeriodo(dataInicio, dataFim)</b></p>

```sql
call ProdutosMenosVendidosPorPeriodo('2023-02-01', '2023-02-15');

```

<p style="font-size: 16px">Resumo venda por clientes: <b>ResumoVendasPorCliente(idCliente)</b></p>

```sql
call ResumoVendasPorCliente(15);
```

<p style="font-size: 16px">Inserir novo cliente: <b>InserirNovoCliente(nome, email, endereco, telefone)</b></p>

```sql
call InserirNovoCliente('Ligia Maria', 'ligia@Email.com', 'Rua sem nome, 485, São Paulo/SP', '(11) 99999-9999');
```

<p style="font-size: 16px">Inserir novo Pedido: <b>InserirNovoPedido(idCliente, vlrFrete, idProduto, qtdProduto)</b></p>

```sql
call InserirNovoPedido(2, 10.00, 1, 2);
```

# 🔧 Tecnologias e ferramentas utilizadas

<div align="center" style="display: inline_block;"><br>
<img align="center" alt="mysql" height="10%" width="10%" style="margin-right:10px; margin-top:20px" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg"/>
<img align="center" alt="git" height="10%" width="10%" style="margin-right:10px; margin-top:20px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"/>
<img align="center" alt="vscode" height="10%" width="10%" style="margin-right:10px; margin-top:20px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg"/>
</div>

<br><br>

# 🐝 Time de desenvolvimento

<br>
<ul>
    <li style="font-size:21px"><a href="https://www.linkedin.com/in/leonardo-reis-95228893/">Leonardo Reis</a></li>
    <li style="font-size:21px"><a href="https://www.linkedin.com/in/leonardosantosdev/">Leonardo Santos</a></li>
    <li style="font-size:21px"><a href="https://www.linkedin.com/in/ligia-baptista-19a1a812a/">Lígia Baptista</a></li>
    <li style="font-size:21px"><a href="https://www.linkedin.com/in/viniicaetano/">Vinicius Caetano</a></li>
</ul>
<br>
