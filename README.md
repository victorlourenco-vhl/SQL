# SQL Server

- Chave primária (Primary Key / PK)
  - Indica um registro de forma exclusiva
  - Não se repete
  - Não pode ser nula
  
- Chave estrangeira  (Foreign Key / FK)
  - Sempre ocorre relacionamento entre tabelas

- Tabela Dimensão
  - Armazena as informações de um único item, ou seja, as informações referente a cada produto e por tanto não podem se repetir

- Tabela Fato
  - Representa os fatos de uma empresa que podem se repetir ou não

## Principais comandos

### CONSTRAINT
- Serve para criar uma chave estrangeira
  - **CONSTRAINT** fk_nome **FOREIGN KEY** (campo_tb_atual) **REFERENCES** tb_de_ligacao (id_campo_tb_ligacao)
