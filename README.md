# Projeto do Módulo 3 do Curso de Desenvolvimento WEB Full-Stack da Resilia Educação - Banco de Dados MySQL :computer:

# 📋 Descrição

<p style="font-size: 16px">O projeto teve como objetivo a criação de um banco de dados para um E-commerce, que o tema escolhido foi uma lanchonete. Fizemos a modelagem utilizando o DB-Diagram e posteriormente criamos os scripts para a criação de tabelas (CREATE TABLE), a inserções dos elementos dentro de cada tabela (INSERT INTO), e a atualização das tabelas (UPDATE).</p>
<p style="font-size: 16px">Com as tabelas alimentadas com os dados, podemos responder as seguintes perguntas que o dono do comércio pode ter como por exemplo: </p>
<p style="font-size: 16px">Qual cliente mais gastou?</p>
<p style="font-size: 16px">Qual o item mais vendido?</p>
<p style="font-size: 16px">Qual o valor médio gasto por cliente?</p>
<p style="font-size: 16px">Qual o dia com maior venda?</p>
<p style="font-size: 16px">Qual o item menos pedido?</p>

# :hammer: Modelagem
<p style="font-size: 16px">Criamos um banco com 4 entidades (Clientes, Produtos, Pedidos e Item Pedido) e com 3 relações entre elas, sendo entre o Item Pedido e Produtos, Item Pedido e Pedidos a relação de muitos para muitos, e entre Cliente e Pedidos e um para muitos.  </p>

<img>![dbDiagram](https://user-images.githubusercontent.com/118377204/221215116-ba339d79-a04d-4092-8fdd-7ab20a4de3ee.png)</img>
