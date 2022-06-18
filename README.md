# Linguagem SQL 🎲
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

- Tabelas **>** Registros **>** Campos
- **Obs:** Linha = Registro = Tupla
- **Resultset:** É o resultado de uma consulta em SQL

## Tipos Primitivos
![image](https://user-images.githubusercontent.com/78964459/173237745-1612fa24-bd75-4bd4-ba9b-845799f6e6ff.png)

## Principais comandos

### USE
- Serve para selecionar um banco de dados para uso
  - **USE** nome_banco

### CREATE comando DDL (Data Definition Language)
- Pode ser usando para criar uma tabela
  - **CREATE** **TABLE** nome_tabela
- Ou pode ser usado para criar um banco de dados
  - **CREATE** **DATABASE** nome_banco

### DESCRIBE
- Descreve a estrutura de tabelas com suas colunas e tipo de dados
  - **DESCRIBE** nome_tabela

### INSERT comando DML (Data Manipulation language)
- Serve para inserir dados na tabela
  - **INSERT INTO** tabela (campos da tabela) **VALUES** (valores para insert)

### ALTER TABLE 
- Serve para manipular as colunas de uma tabela
- Criando chave estrangeira
  - **ALTER TABLE** tabela **ADD CONSTRAINT** fk_nome **FOREIGN KEY** (campo_tb_atual) **REFERENCES** tb_de_ligacao (id_campo_tb_ligacao)
- Adionando coluna na tabela
  - **ALTER TABLE** nome_tabela **ADD COLUMN** nome_coluna tipo_primitivo **AFTER** nome_coluna # O **AFTER** é opcional. Caso queira colocar a coluna
    na primeira posição deve passsar o parâmentro **FIRST**
- Modificando as colunas da tabela
  - MODIFY - Permite redimensionar a coluna
    - **ALTER TABLE** nome_tabela **MODIFY COLUMN** tipo_primitivo(novo_tamanho) **NOT NULL**
  - CHANGE - Renomear uma coluna, alterar o tipo e valor padrão
    - **ALTER TABLE** nome_tabela **CHANGE COLUMN** nome_tabela novo_nome tipo_primitvo(tamanho)  **NOT NULL** **DEFAULT** ' '
- Renomear a tabela
  - **ALTER TABLE** nome_tabela **RENAME TO** novo_nome
- **Obs:** para remover um dado da tabela basta trocar o **ADD** por **DROP** 

### UPDATE
- Serve para manipular as linhas de uma tabela
  - **UPDATE** nome_tabela **SET** nome_linha = novo_valor **WHERE** nome_referencia = valor **LIMIT** 1 # O limit serve para limitar a quantidade de linhas que será       modificada

### DELETE
  - Comando utilizado para eleminar uma ou mais linhas da tabela
    - **DELETE FROM** nome_tabela **WHERE** nome_campo = valor

### TRUNCATE
- Deleta todas as linha de uma tabela
  - **TRUNCATE** **FROM** nome_tabela
  
### DROP
- É possível utilizar o DROP para uma apagar uma tabela ou constraint
  - **ALTER TABLE** tabela **DROP** nome_constraint
  - **DROP TABLE** nome_tabela
    
### SELECT
  - Serve para selecionar os campos de uma tabela
  - Pricipais parâmetros:
    - **ORDER BY** nome_coluna **-->** Ordena os registros em ordem crescecente, se quisero inverso é só passar o **DESC** depois de nome coluna
    - **BETWEEN** valorA **AND** valorB **-->** Filtra os valores que estão entreo o valorA e o valorB
    - **IN** (valorA, valorB...) **-->** Filtra por determinados valores
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
  ![image](https://user-images.githubusercontent.com/78964459/173239771-63154142-3315-4bd6-af25-19ba1b0bd845.png)


