-- ==========================================================
-- ALTERAÇÕES NA ESTRUTURA
-- OBJETIVO: Adicionar colunas de valor_total e status na tabela pedidos
-- ==========================================================

ALTER TABLE pedidos ADD COLUMN valor_total DECIMAL(10,2) DEFAULT 0.00;
ALTER TABLE pedidos ADD COLUMN status VARCHAR(20) DEFAULT 'em preparo';