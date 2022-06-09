# SQL Server 🎲

- Chave primária (Primary Key / PK)
  - Indica um registro de forma exclusiva
  - Não se repete
  - Não pode ser nula
  
- Chave estrangeira  (Foreign Key / FK)
  - Relaciona um registro com outras tabelas
  - Sempre ocorre relacionamento entre tabelas

- Tabela Dimensão
  - Armazena as informações de um único item, ou seja, as informações referente a cada produto e por tanto não podem se repetir

- Tabela Fato
  - Representa os fatos de uma empresa que podem se repetir ou não

## Principais comandos

### ALTER TABLE / CONSTRAINT
- Serve para criar uma chave estrangeira
  - **ALTER TABLE** tabela **ADD CONSTRAINT** fk_nome **FOREIGN KEY** (campo_tb_atual) **REFERENCES** tb_de_ligacao (id_campo_tb_ligacao)
  
### INSERT
- Serve para inserir dados na tabela
  - **INSERT INTO** tabela (campos da tabela) **VALUES** (valores para insert)
  
### DROP
- É possível utilizar o DROP para uma apagar uma tabela ou contraint
  - **ALTER TABLE** tabela **DROP** nome_constraint
  - **DROP TABLE** nome_tabela
  
### DELETE
  - Comando utilizado para eleminar uma ou mais linhas da tabela
    - **DELETE FROM** nome_tabela **WHERE** nome_campo = valor
    
### SELECT
  - Serve para selecionar os campos de uma tabela
    - **SELECT** nome_campo(s) **FROM**  nome_tabela  
    - **SELECT** nome.\*tabela **FROM**  nome_tabela  -- Exemplo de query com o nome da tebela
    - **SELECT** * **FROM** nome_tabela -- Serve para selecionar todos os campos da tabela
  
