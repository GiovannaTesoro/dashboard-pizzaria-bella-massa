-- ==========================================================
-- ANÁLISE: Top 5 Faturamento
-- PERGUNTA: Qual produto gerou mais receita (faturamento)?
-- OBJETIVO: Descobrir quais produtos trazem mais dinheiro, não só volume.
-- ==========================================================

SELECT 
    prod.nome, 
    SUM(i.quantidade * i.preco_unitario) AS faturamento_total 
FROM produtos prod
JOIN itens_pedido i ON i.produto_id = prod.id
GROUP BY prod.nome
ORDER BY faturamento_total DESC
LIMIT 5;