-- ==========================================================
-- CRIAÇÃO DAS TABELAS
-- ORDEM: usuarios -> produtos -> pedidos -> itens_pedido
-- ==========================================================

-- 1. Tabela de Usuários
CREATE TABLE usuarios(
id SERIAL PRIMARY KEY,
nome VARCHAR(100)NOT NULL, 
email VARCHAR(50)NOT NULL UNIQUE,  
telefone VARCHAR(20),
idade INTEGER, 
data_nascimento DATE,
endereco VARCHAR(100),
bairro VARCHAR(50),
genero VARCHAR(20),
data_cadastro DATE DEFAULT CURRENT_DATE, 
ativo boolean DEFAULT TRUE 
);

-- 2. Tabela de Produtos
CREATE TABLE produtos (
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
ingredientes TEXT,
preco DECIMAL(10,2) NOT NULL,
ativo BOOLEAN DEFAULT TRUE
);

-- 3. Tabela de Pedidos
CREATE TABLE pedidos (
id SERIAL PRIMARY KEY, 
usuario_id INT NOT NULL, 
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
FOREIGN KEY(usuario_id) REFERENCES usuarios(id) 
);

-- 4. Tabela de Itens do Pedido
CREATE TABLE itens_pedido (
id SERIAL PRIMARY KEY, 
pedido_id INT NOT NULL, 
produto_id INT NOT NULL, 
quantidade INT NOT NULL DEFAULT 1,
preco_unitario DECIMAL(10,2) NOT NULL,
FOREIGN KEY (pedido_id) REFERENCES pedidos(id), 
FOREIGN KEY (produto_id) REFERENCES produtos(id)
);