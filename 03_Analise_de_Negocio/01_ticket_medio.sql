-- ==========================================================
-- ANÁLISE: Ticket Médio
-- PERGUNTA DE NEGÓCIO: Qual é o valor médio gasto por pedido?
-- OBJETIVO: Entender o ticket médio da pizzaria para planejar promoções.
-- ==========================================================

SELECT AVG(valor_total) AS ticket_medio
FROM pedidos;