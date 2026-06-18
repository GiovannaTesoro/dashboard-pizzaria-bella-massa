-- ==========================================================
-- ANÁLISE: Clientes Mais Fiéis
-- PERGUNTA DE NEGÓCIO: Quem são os 5 clientes que mais compraram?
-- OBJETIVO: Identificar a base fiel para criar campanhas de fidelidade.
-- ==========================================================

SELECT u.nome, COUNT(p.id) AS total_pedidos 
FROM usuarios u 
JOIN pedidos p ON p.usuario_id = u.id 
GROUP BY u.nome 
ORDER BY total_pedidos DESC 
LIMIT 5;