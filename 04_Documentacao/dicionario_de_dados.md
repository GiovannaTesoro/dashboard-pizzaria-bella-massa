# Dicionário de Dados - Pizzaria Bella Massa

## Tabela: USUARIOS
| Coluna | Tipo | Descrição |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID único e sequencial do cliente |
| nome | VARCHAR(100) NOT NULL | Nome completo do cliente (ex: 'Giovanna Lourenço') |
| email | VARCHAR(50) NOT NULL UNIQUE | Email único do cliente |
| telefone | VARCHAR(20) | Telefone de contato |
| idade | INTEGER | Idade do cliente |
| endereco | VARCHAR(100) | Endereço completo |
| bairro | VARCHAR(50) | Bairro |
| genero | VARCHAR(20) | Gênero |
| data_cadastro | DATE DEFAULT CURRENT_DATE | Data de cadastro (automática) |
| ativo | BOOLEAN DEFAULT TRUE | Status do cliente (ativo/inativo) |

## Tabela: PRODUTOS
| Coluna | Tipo | Descrição |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID único do produto |
| nome | VARCHAR(100) NOT NULL | Nome do produto (pizza ou bebida) |
| ingredientes | TEXT | Lista de ingredientes |
| preco | DECIMAL(10,2) NOT NULL | Preço do produto (ex: 89.99) |
| ativo | BOOLEAN DEFAULT TRUE | Disponibilidade do produto |

## Tabela: PEDIDOS
| Coluna | Tipo | Descrição |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID único do pedido |
| usuario_id | INT NOT NULL | FK → usuarios(id) |
| data_pedido | TIMESTAMP DEFAULT CURRENT_TIMESTAMP | Data/hora do pedido |
| valor_total | DECIMAL(10,2) | Valor total do pedido |
| status | VARCHAR(20) | Status (ex: 'em preparo') |

## Tabela: ITENS_PEDIDO
| Coluna | Tipo | Descrição |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID único do item |
| pedido_id | INT NOT NULL | FK → pedidos(id) |
| produto_id | INT NOT NULL | FK → produtos(id) |
| quantidade | INT NOT NULL DEFAULT 1 | Quantidade do produto |
| preco_unitario | DECIMAL(10,2) NOT NULL | Preço no momento da compra |