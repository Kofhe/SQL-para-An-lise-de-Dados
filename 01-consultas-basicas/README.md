# 🔎 Etapa 01 — Consultas Básicas

> 🧠 **Primeiros passos com SQL: explorando uma base de dados hospitalar.**

Nesta primeira etapa, o objetivo foi aprender a realizar consultas básicas no **MySQL** e entender quais informações estão disponíveis em uma tabela.

Antes de realizar análises mais complexas, é importante conhecer os dados com os quais estamos trabalhando. 🔍

---

<div align="center">

### 📚 Conceitos praticados

<img src="https://img.shields.io/badge/SELECT-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/COUNT()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/DISTINCT-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/AS-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/GROUP%20BY-4479A1?style=for-the-badge">

</div>

---

## 🎯 Objetivo da etapa

Nesta etapa, pratiquei consultas para:

* 🔎 Explorar uma tabela
* 📋 Visualizar os dados disponíveis
* 🔢 Contar registros
* 🏥 Identificar valores únicos
* 📊 Agrupar informações
* 🧠 Transformar perguntas em consultas SQL

---

# 🧩 Desafios

## 🔎 Desafio 01 — Explorando a tabela

**Pergunta:**

> Primeiro, quero que você descubra quais informações existem na tabela.

### 💡 O que estou praticando?

Para começar uma análise, preciso entender **quais colunas e informações existem na tabela**.

Utilizei `SELECT *` para visualizar todos os registros e todas as colunas disponíveis.

### 💻 Consulta

```sql
SELECT *
FROM atendimentos;
```

### 🧠 Conceito

**`SELECT`** é utilizado para consultar dados de uma tabela.

O `*` significa que queremos retornar **todas as colunas**.

---

## 🔢 Desafio 02 — Quantidade de atendimentos

**Pergunta:**

> Quantos atendimentos existem na base?

### 💡 O que estou praticando?

Aqui o objetivo foi descobrir a quantidade total de registros existentes na tabela.

### 💻 Consulta

```sql
SELECT COUNT(*) AS quantidade
FROM atendimentos;
```

### 🧠 Conceitos

**`COUNT()`** → conta a quantidade de registros.

**`AS`** → cria um nome para o resultado da consulta.

Neste caso:

```text
COUNT(*) → conta os registros

AS quantidade → dá um nome ao resultado
```

---

## 🏥 Desafio 03 — Unidades hospitalares

**Pergunta:**

> Quais unidades hospitalares existem na base?

### 💡 O que estou praticando?

Uma mesma unidade pode aparecer em vários atendimentos. Por isso, não queremos visualizar valores repetidos.

### 💻 Consulta

```sql
SELECT DISTINCT unidade
FROM atendimentos;
```

### 🧠 Conceito

**`DISTINCT`** retorna apenas valores únicos, eliminando repetições.

Por exemplo:

```text
Unidade A
Unidade A
Unidade B
Unidade B
Unidade C
```

Com `DISTINCT`:

```text
Unidade A
Unidade B
Unidade C
```

---

## 🩺 Desafio 04 — Especialidades

**Pergunta:**

> Quais especialidades existem na base?

### 💡 O que estou praticando?

Assim como no desafio anterior, quero identificar os diferentes valores existentes em uma coluna sem que eles apareçam repetidos.

### 💻 Consulta

```sql
SELECT DISTINCT especialidade
FROM atendimentos;
```

### 🧠 Conceito

Novamente utilizamos **`DISTINCT`** para retornar somente as especialidades únicas existentes na base.

Isso permite descobrir rapidamente **quais especialidades estão representadas nos dados**.

---

## 📊 Desafio 05 — Atendimentos por unidade

**Pergunta:**

> Quantos atendimentos existem em cada unidade?

### 💡 O que estou praticando?

Agora a pergunta é um pouco diferente.

Não quero saber apenas o total de atendimentos da base. Quero saber **quantos atendimentos pertencem a cada unidade**.

Para isso, preciso agrupar os registros por unidade e contar os atendimentos de cada grupo.

### 💻 Consulta

```sql
SELECT unidade AS Unidades, 
    COUNT(id_atendimento) AS Total_Atendimentos
FROM atendimentos
GROUP BY unidade;
```

### 🧠 Conceitos

**`GROUP BY`** → agrupa os registros que possuem o mesmo valor.

Neste caso:

```text
GROUP BY unidade
```

faz com que os atendimentos sejam separados por unidade.

**`COUNT(id_atendimento)`** → conta quantos atendimentos existem dentro de cada grupo.

**`AS`** → permite criar nomes mais claros para as colunas do resultado.

---

# 📚 O que aprendi?

Nesta etapa, comecei a entender como **explorar uma base de dados utilizando SQL** e como transformar perguntas simples em consultas.

### 🧠 Principais conceitos

| 💻 Comando | 🎯 Para que serve                            |
| :--------: | :------------------------------------------- |
|  `SELECT`  | Consultar informações                        |
|     `*`    | Selecionar todas as colunas                  |
|  `COUNT()` | Contar registros                             |
| `DISTINCT` | Retornar valores únicos                      |
|    `AS`    | Criar um nome para o resultado               |
| `GROUP BY` | Agrupar registros por uma determinada coluna |

### 💭 Principal aprendizado

> Antes de começar uma análise, é importante **conhecer os dados primeiro**.

Também comecei a perceber como uma pergunta de negócio pode ser transformada em uma consulta SQL para gerar uma informação útil.

---

# 📈 Meu progresso

<div align="center">

### 🔎 Etapa 01

**Consultas Básicas**

`████████████████████` **100%**

🟢 **Concluído**

</div>

---

<div align="center">

⭐ **Etapa 01 concluída!**

*Aprendendo, praticando e transformando dados em informação.*

</div>
