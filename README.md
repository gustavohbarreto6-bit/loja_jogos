# 🎮 PixelPlay - Banco de Dados de Jogos e Clientes

Este projeto consiste na modelagem e implementação de um banco de dados relacional para uma plataforma de venda de jogos chamada **PixelPlay**. O sistema armazena informações sobre jogos, clientes e vendas realizadas.

---

## 🗃️ Estrutura do Banco de Dados

O banco de dados é composto por três tabelas principais:

### 1. `game` - Tabela de Jogos
Armazena as informações dos jogos disponíveis na plataforma.

| Campo           | Tipo         | Descrição                             |
|----------------|--------------|----------------------------------------|
| `id`           | INT (PK)     | Identificador único do jogo           |
| `titulo`       | VARCHAR(110) | Nome do jogo                          |
| `plataforma`   | VARCHAR(50)  | Plataforma (ex: PC, PS5, Xbox)        |
| `genero`       | VARCHAR(90)  | Gênero do jogo                        |
| `ano_lancamento` | CHAR(4)    | Ano de lançamento do jogo             |
| `descricao`    | VARCHAR(500) | Descrição resumida do jogo            |

---

### 2. `cliente` - Tabela de Clientes
Armazena os dados dos usuários cadastrados na plataforma.

| Campo    | Tipo         | Descrição                          |
|----------|--------------|-------------------------------------|
| `cpf`    | CHAR(11) (PK)| CPF do cliente (formato numérico) |
| `nome`   | VARCHAR(50)  | Nome completo                      |
| `idade`  | INT(3)       | Idade                              |
| `email`  | VARCHAR(30)  | Endereço de e-mail                 |

---

### 3. `venda` - Tabela de Vendas
Relaciona quais clientes compraram quais jogos, e quando.

| Campo         | Tipo        | Descrição                           |
|---------------|-------------|--------------------------------------|
| `cliente_cpf` | CHAR(11)    | CPF do cliente (FK de `cliente`)    |
| `game_id`     | INT         | ID do jogo (FK de `game`)           |
| `data_venda`  | DATE        | Data da venda                       |

- **Chave primária composta**: (`cliente_cpf`, `game_id`)
- **Relacionamentos**:
  - `cliente_cpf` → `cliente(cpf)`
  - `game_id` → `game(id)`

---

## 🛠️ Comandos úteis

### 🔍 Selecionar todos os jogos

SELECT titulo, plataforma, genero, ano_lancamento FROM game;
📧 Listar clientes com email do Gmail
sql
Copiar código
SELECT nome, email FROM cliente WHERE email LIKE '%@gmail.com';
🗓️ Ver vendas realizadas em outubro
sql
Copiar código
SELECT * FROM venda WHERE MONTH(data_venda) = 10;
🔄 Atualizar email de um cliente
sql
Copiar código
UPDATE cliente 
SET email = 'novoemail@example.com'
WHERE cpf = '12345678900';
🧹 Remover jogos ou vendas
sql
Copiar código
DELETE FROM game WHERE titulo = 'Nome do Jogo';
DELETE FROM venda WHERE data_venda < (CURDATE() - INTERVAL 30 DAY);
🚧 Possíveis melhorias
Adicionar status de pagamento na tabela venda

Criar tabela plataforma para normalizar dados

Implementar histórico de compras detalhado

Inserir notas/avaliações dos jogos

👨‍💻 Autor
Gustavo Barreto
