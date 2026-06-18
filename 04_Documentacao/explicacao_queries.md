# Explicação das Queries SQL

## Query 1: Total por Pedido
```sql
SELECT 
    p.id AS pedido,
    u.nome AS cliente,
    SUM(i.quantidade * i.preco_unitario) AS total_pedido
FROM pedidos p
JOIN usuarios u ON u.id = p.usuario_id
JOIN itens_pedido i ON i.pedido_id = p.id
GROUP BY p.id, u.nome
ORDER BY p.id;
```
Explicação:

SUM(i.quantidade * i.preco_unitario): Multiplica quantidade x preço e soma tudo do pedido
JOIN usuários:Conecta pedido com cliente (como atendente olha cadastro)
JOIN itens pedido: Abre a comanda e lê os itens
GROUP BY: Separa os comandos em pilhas (não soma tudo junto)

## Query 2: Ticket Médio
```sql
SELECT AVG(valor_total) AS ticket médio
FROM pedidos;

Explicação:

Calcula a média do valor total de todos os pedidos.

## Query 3: Top 5 Clientes
```sql
SELECT u.nome, COUNT(p.id) AS total_pedidos
FROM usuarios u
JOIN pedidos p ON p.usuario_id = u.id
GROUP BY u.nome
ORDER BY total_pedidos DESC
LIMIT 5;
```

Explicação: 

Conta quantos pedidos cada cliente fez e mostra os 5 primeiros.

## Query 4: Pedidos por Dia da Semana
```sql
SELECT 
  CASE EXTRACT(DOW FROM data_pedido)
    WHEN 0 THEN 'Domingo'
    WHEN 1 THEN 'Segunda'
    WHEN 2 THEN 'Terça'
    WHEN 3 THEN 'Quarta'
    WHEN 4 THEN 'Quinta'
    WHEN 5 THEN 'Sexta'
    WHEN 6 THEN 'Sábado'
  END AS dia_semana,
  COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY dia_semana
ORDER BY total_pedidos DESC;
```

Explicação: 

Extrai o dia da semana da data do pedido e conta quantos pedidos teve em cada dia.

