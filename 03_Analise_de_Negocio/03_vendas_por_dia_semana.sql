-- ==========================================================
-- ANÁLISE: Vendas por Dia da Semana
-- PERGUNTA: Qual dia da semana apresenta maior volume de pedidos?
-- OBJETIVO: Identificar dias de pico para otimizar equipe e estoque.
-- ==========================================================

SELECT 
    CASE EXTRACT(DOW FROM data_pedido)
        WHEN 0 THEN 'Domingo'
        WHEN 1 THEN 'Segunda'
        WHEN 2 THEN 'Terca'
        WHEN 3 THEN 'Quarta'
        WHEN 4 THEN 'Quinta'
        WHEN 5 THEN 'Sexta'
        WHEN 6 THEN 'Sabado'
    END AS dia_semana,
    COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY dia_semana
ORDER BY total_pedidos DESC;