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
    - Utilizar Alias (APELIDO) para Nome da Tabela  
      - **SELECT** * **FROM**  nome_tabela  alias 
      - **SELECT** alias.\* **FROM**  nome_tabela alias
      - **SELECT** alias.nome_campo(s) **FROM** nome_tabela alias
    - Utilizado Alias para nome de coluna
      - obs: O uso do **AS** é opcional
      - **SELECT** t.id_curso **AS** IDC, t.id_turma **AS** IDT, t.data_inicio **AS** DATA_COMECO **FROM** dbo.Turmas t
    - Exemplo de query com o nome da tebela
      - **SELECT** nome.\*tabela **FROM**  nome_tabela  
    - Serve para selecionar todos os campos da tabela
      - **SELECT** * **FROM** nome_tabela

### SELECT com WHERE
  - Seve para filtrar os valores da consulta
    - **SELECT** nome_coluna(s) **FROM** nome_tabela(s)  **WHERE** nome_coluna = valor
    - **Operadores**: 
      - \> maior
      - < menor
      - \>= maior ou igual
      - <= menor ou igual
      - != | <> diferente
      - = igual
    - Exmplos de consulta: 
      - **SELECT** a.* **FROM** Alunos a **WHERE** a.sexo = 'F' **AND** a.data_nascismento >= '01/01/2003' **AND** a.id_aluno >= 300;
      - **SELECT** a.nome, a.sexo, year(a.data_nascismento) **AS** ano from dbo.Alunos a **WHERE** a.data_nascismento >= '01/01/2003';  **-->** A função year() vai         retornar só o ano
      - **SELECT** c.nome_curso, t.data_inicio, t.data_termino,
        floor(axt.valor), floor((axt.valor * axt.valor_desconto)) **AS** desconto,
        floor(axt.valor - (axt.valor * axt.valor_desconto)) **AS** "valor final"
        **FROM** AlunosxTurmas axt, Turmas t, Cursos c
        **WHERE** axt.id_turma = t.id_turma 
        **AND** t.id_curso = c.id_curso; **-->** O floor() arredondamento o valor para baixo (trunca o valor)


### JOIN (Junção de Tabelas)
  ![image](https://user-images.githubusercontent.com/78964459/173083798-570b3baf-26f7-4432-a1e5-5b9b50af86f7.png)


