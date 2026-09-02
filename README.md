# 📊 SQL para Análise de Dados

> 🧠 Meu laboratório de estudos de SQL, com foco em **Análise de Dados e Business Intelligence**.

Este repositório acompanha minha evolução no aprendizado de **SQL**, desde a criação e exploração de bases de dados até consultas e análises mais completas.

Os exercícios são desenvolvidos utilizando uma **base de dados hospitalar fictícia**, criada para praticar situações próximas às encontradas no dia a dia de uma pessoa que trabalha com **Dados e BI**.

---

<div align="left">

### 💻 SQL | MySQL | Git | GitHub 

<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=database&logoColor=white">
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white">
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white">

</div>

---

## 🗺️ Minha jornada em SQL

| 📚 Etapa | 📌 Conteúdo                  |     🚦 Status    |
| :------: | :--------------------------- | :--------------: |
|  **01**  | 🔎 Consultas Básicas         | 🟢 **Concluído** |
|  **02**  | 🎯 Filtros e Ordenação       |   ⚪ **Próximo**  |
|  **03**  | 📊 Agregações e Agrupamentos |         ⚪        |
|  **04**  | 🔗 JOINs                     |         ⚪        |
|  **05**  | 🧩 Subconsultas              |         ⚪        |
|  **06**  | 🚀 Desafios de Análise       |         ⚪        |
|  **07**  | 💼 Projeto Final             |         ⚪        |

---

# 🏥 Sobre a Base de Dados

Para praticar SQL, criei uma base de dados hospitalar fictícia chamada **`hospital_bi`**.

A base foi criada pensando em um cenário de **análise de atendimentos hospitalares**, permitindo trabalhar posteriormente com indicadores de volume, perfil, eficiência e satisfação.

### 📋 Tabela `atendimentos`

| 🏷️ Coluna              |    🔎 Tipo   | 📌 Descrição                      |
| :---------------------- | :----------: | :-------------------------------- |
| `id_atendimento`        |  VARCHAR(20) | Identificador do atendimento      |
| `data_atendimento`      |     DATE     | Data em que o atendimento ocorreu |
| `unidade`               | VARCHAR(100) | Unidade hospitalar                |
| `especialidade`         | VARCHAR(100) | Especialidade do atendimento      |
| `tipo_atendimento`      | VARCHAR(100) | Tipo de atendimento realizado     |
| `prioridade`            |  VARCHAR(50) | Classificação de prioridade       |
| `idade`                 |      INT     | Idade do paciente                 |
| `convenio`              | VARCHAR(100) | Convênio utilizado                |
| `status`                |  VARCHAR(50) | Situação do atendimento           |
| `tempo_espera_min`      |      INT     | Tempo de espera em minutos        |
| `tempo_atendimento_min` |      INT     | Duração do atendimento em minutos |
| `satisfacao`            | DECIMAL(4,2) | Nota de satisfação                |

---

# 🛠️ Criação da Base

### 🗄️ Criando o banco de dados

```sql
CREATE DATABASE hospital_bi;

USE hospital_bi;
```

### 🏥 Criando a tabela `atendimentos`

```sql
CREATE TABLE atendimentos (
    id_atendimento VARCHAR(20),
    data_atendimento DATE,
    unidade VARCHAR(100),
    especialidade VARCHAR(100),
    tipo_atendimento VARCHAR(100),
    prioridade VARCHAR(50),
    idade INT,
    convenio VARCHAR(100),
    status VARCHAR(50),
    tempo_espera_min INT,
    tempo_atendimento_min INT,
    satisfacao DECIMAL(4,2)
);
```

### 🔎 Verificando a estrutura do banco

```sql
SHOW TABLES;

DESCRIBE atendimentos;
```

### 🔢 Verificando a quantidade de registros

```sql
SELECT COUNT(*) AS total_registros
FROM atendimentos;
```


---

<div align="center">

⭐ **Este repositório está em construção conforme avanço nos estudos.**

*Aprendendo, praticando e transformando dados em informação.*

</div>
