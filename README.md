# 🚘 Projeto_CarHub 🚘

<p align="center">
  <img src="Img/banner.png" alt="Banner do Projeto" >
</p

Este projeto consiste na criação de um banco de dados relacional do zero, com foco em gestão de vendas de uma concessionária. O projeto abrange modelagem, criação de tabelas, inserção de dados fictícios e consultas SQL relevantes para análise dos dados.

## 🎯 Objetivo

Criar um banco de dados funcional e bem estruturado para simular o funcionamento de um sistema de vendas de uma concessionária. O objetivo é praticar:
- Modelagem relacional (diagrama ER)
- Criação de tabelas (DDL)
- Manipulação de dados (DML)
- Consultas SQL (SELECT, JOIN, GROUP BY, etc.)
- Normalização e boas práticas

## 👨‍💻 Tecnologias
<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=vscode,mysql,git" />
  </a>
</p>

## 📂 Estrutura do Projeto

```📦 nome-do-projeto/
├── README.md
└── scripts/
├── 01_create_tables.sql # Criação das tabelas
```

## 🔧 Requisitos

Para executar o projeto, você vai precisar de:

### Um gerenciador de banco de dados, como:
  - [MySQL](https://dev.mysql.com/downloads/)
  - [PostgreSQL](https://www.postgresql.org/)
  - [SQLite](https://www.sqlite.org/)
###  Um editor de SQL:
   MySQL Workbench, DBeaver, Beekeeper Studio ou VS Code (com extensão SQL)

##  Como Executar

1. **Clone este repositório**:
   ```bash
   git clone https://github.com/seu-usuario/nome-do-projeto.git
   cd nome-do-projeto
    ```
2. **Abra seu gerenciador de banco de dados (ex: MySQL Workbench)**

3. **Crie um novo banco de dados:**
    ```sql
    CREATE DATABASE nome_do_banco;
    USE nome_do_banco;
    ```

4. **Execute os scripts SQL na seguinte ordem:**

    -  01_create_tables.sql → Criação das tabelas

    - 02_insert_data.sql → Inserção de dados fictícios

    - 03_queries.sql → Consultas e análises

