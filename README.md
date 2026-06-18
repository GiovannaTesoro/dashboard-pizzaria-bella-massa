# Análise de Desempenho - Pizzaria Bella Massa

## Problema de Negócio
A Pizzaria Bella Massa precisa entender melhor seu desempenho de vendas para otimizar estoques, escalas de funcionários e campanhas de marketing. Sem dados estruturados, as decisões eram baseadas apenas em intuição, resultando em desperdícios e perda de oportunidades.

**Como aumentar o lucro e a eficiência operacional da pizzaria através da análise de dados?**

## Contexto
O projeto foi desenvolvido para analisar o desempenho de vendas da Pizzaria Bella Massa no primeiro trimestre de 2026 (jan-mar). A análise tem como objetivo identificar padrões de consumo, produtos mais vendidos, dias de pico e perfil dos clientes mais fiéis.

## Premissas da Análise
1. Período analisado: Janeiro a Março de 2026
2. Total de 100 pedidos registrados
3. Base de 30 clientes e 29 produtos
4. Dados extraídos de um banco de dados PostgreSQL relacional

## Estratégia da Solução

### Passo 1: Modelagem do Banco de Dados
Criação de 4 tabelas relacionais (USUARIOS, PRODUTOS, PEDIDOS, ITENS_PEDIDO) com chaves primárias e estrangeiras para garantir integridade dos dados.

### Passo 2: População dos Dados
Inserção de dados reais simulados: 30 clientes, 29 produtos e 100 pedidos.

### Passo 3: Análise Exploratória com SQL
Desenvolvimento de queries para responder perguntas de negócio:
- Ticket médio
- Top 5 clientes fiéis
- Vendas por dia da semana
- Top 5 produtos mais vendidos

### Passo 4: Visualização no Power BI
Criação de dashboard interativo com KPIs e gráficos para facilitar a interpretação dos dados.

## Hipóteses Analíticas

**Hipótese 1:** Finais de semana (Sexta, Sábado e Domingo) concentram mais de 70% das vendas.

**Hipótese 2:** Pizzas tradicionais e doces lideram as vendas.

**Hipótese 3:** Existe um grupo de clientes fiéis que representam mais de 20% dos pedidos.

## Principais Insights

### Visão Geral do Desempenho
- **Ticket Médio:** R$ 96,21 por pedido
- **Total de Pedidos:** 100
- **Faturamento Total:** R$ 9.993,00

### Pedidos por Dia da Semana
- **Domingo:** 27 pedidos (27% do total)
- **Sábado:** 26 pedidos (26% do total)
- **Sexta:** 23 pedidos (23% do total)
- **Conclusão:** Finais de semana representam 76% das vendas  (Hipótese 1 confirmada)

### Top 5 Produtos Mais Vendidos
1. Pizza Vegana de Palmito - 20 unidades
2. Doce de Leite com Banana - 19 unidades
3. Pizza Vegetariana Especial - 19 unidades
4. Brigadeiro com Morango - 18 unidades
5. Frango com Catupiry - 17 unidades
 Pizzas e doces lideram (Hipótese 2 confirmada)

###  Top 5 Clientes Fiéis
5 clientes empatados com 4 pedidos cada:
- Carlos Oliveira
- Diego Almeida
- Gabriel Costa
- Gabriel Moreira
- Helena Castro
 Clientes fiéis representam 20% dos pedidos (Hipótese 3 confirmada)

## Resultados

**Para o dono da pizzaria, esses insights permitem:**
- **Otimizar escalas de funcionários:** Reforçar equipe de sexta a domingo
- **Gestão de estoque:** Manter estoque elevado dos 5 produtos mais vendidos
- **Campanhas de marketing:** Criar programas de fidelidade para os clientes top 5
- **Precificação:** Analisar se o ticket médio de R$ 96,21 está adequado ao mercado

## Tecnologias Utilizadas
- PostgreSQL (Modelagem e SQL)
- Power BI (Dashboard e Visualização)
- Git/GitHub (Versionamento)

## Estrutura do Projeto
dashboard-pizzaria-bella-massa/
├── 01_Modelagem_DDL/ # Criação das tabelas
├── 02_Populacao_DML/ # Inserção de dados
├── 03_Analise_de_Negocio/ # Queries SQL analíticas
├── 04_Documentacao/ # Dicionário de dados e explicações
└── Dashboard_Pizzaria.pbix # Arquivo do Power BI


##  Como Executar
1. Clone este repositório
2. Execute os scripts SQL na ordem: `01_Modelagem_DDL` → `02_Populacao_DML`
3. Abra o arquivo `Dashboard_Pizzaria.pbix` no Power BI Desktop

---

**Projeto desenvolvido por Giovana Lourenço** | [LinkedIn] https://www.linkedin.com/in/giovanna-louren%C3%A7o-714383344/| [GitHub](github.com/GiovannaTesoro)
