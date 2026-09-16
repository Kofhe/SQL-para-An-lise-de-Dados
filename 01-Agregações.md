# 📊 Etapa 03 — Agregações

> 🧠 **Avançando nos estudos de SQL: utilizando funções de agregação para resumir e analisar uma base de dados hospitalar.**

Nesta terceira etapa, o objetivo foi aprender a utilizar **funções de agregação** para transformar vários registros em informações resumidas.

Depois de aprender a filtrar registros na etapa anterior, comecei a trabalhar com perguntas como **quantos**, **qual a média**, **qual o maior** e **qual o menor valor** dentro da base de dados. 📊

---

<div align="center">

### 📚 Conceitos praticados

<img src="https://img.shields.io/badge/COUNT()-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/AVG()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/MIN()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/MAX()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/GROUP%20BY-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/ORDER%20BY-4479A1?style=for-the-badge">

</div>

---

## 🎯 Objetivo da etapa

Nesta etapa, pratiquei consultas para:

* 🔢 Contar a quantidade total de atendimentos
* 📊 Calcular a média de idade dos pacientes
* 👴 Identificar a maior idade da base
* 👶 Identificar a menor idade da base
* 📋 Agrupar atendimentos por status
* 🏥 Agrupar atendimentos por especialidade
* 🔎 Ordenar resultados de acordo com a quantidade de registros
* 🧠 Transformar perguntas de análise em consultas SQL

---

# 🧩 Desafios

## 🔢 Desafio 01 — Contando atendimentos

**Pergunta:**

> Quantos atendimentos existem no total?

### 💻 Consulta SQL

```sql
SELECT COUNT(*) AS quantidade_atendimentos
FROM atendimentos;
```

### 💡 O que estou praticando?

Utilizei a função **`COUNT()`** para contar a quantidade total de registros existentes na tabela.

---

## 📊 Desafio 02 — Calculando a idade média

**Pergunta:**

> Qual é a idade média dos pacientes?

### 💻 Consulta SQL

```sql
SELECT AVG(idade) AS media_idade
FROM atendimentos;
```

### 💡 O que estou praticando?

Utilizei a função **`AVG()`** para calcular a média dos valores presentes na coluna `idade`.

Esse tipo de cálculo permite obter uma visão geral do perfil dos pacientes da base.

---

## 👴 Desafio 03 — Encontrando a maior idade

**Pergunta:**

> Qual é a maior idade registrada na base?

### 💻 Consulta SQL

```sql
SELECT MAX(idade) AS paciente_mais_velho
FROM atendimentos;
```

### 💡 O que estou praticando?

Utilizei a função **`MAX()`** para encontrar o maior valor existente na coluna `idade`.

---

## 👶 Desafio 04 — Encontrando a menor idade

**Pergunta:**

> Qual é a menor idade registrada na base?

### 💻 Consulta SQL

```sql
SELECT MIN(idade) AS paciente_mais_novo
FROM atendimentos;
```

### 💡 O que estou praticando?

Utilizei a função **`MIN()`** para identificar o menor valor existente na coluna `idade`.

---

## ⚠️ Desafio 05 — Verificando uma informação inexistente

**Pergunta:**

> Qual é o peso médio dos pacientes?

### 💻 Consulta SQL

```sql
-- Não realizado: a tabela atendimentos
-- não possui uma coluna de peso.
```

### 💡 O que estou praticando?

Ao analisar a estrutura da tabela, identifiquei que a base **não possui uma coluna relacionada ao peso dos pacientes**.

Por isso, não foi possível realizar o cálculo com os dados disponíveis.

Esse exercício mostrou a importância de **conhecer a estrutura da base antes de realizar uma análise**, evitando assumir que determinada informação está disponível.

---

## 📋 Desafio 06 — Agrupando por status

**Pergunta:**

> Quantos atendimentos existem em cada status?

### 💻 Consulta SQL

```sql
select status,
count(status) as quantidade
from atendimentos
group by status
```

### 💡 O que estou praticando?

Utilizei o **`GROUP BY`** junto com o **`COUNT()`** para agrupar os atendimentos de acordo com o `status` e contabilizar a quantidade de registros em cada grupo.

---

## 🏥 Desafio 07 — Agrupando por especialidade

**Pergunta:**

> Quantos atendimentos existem em cada especialidade?

### 💻 Consulta SQL

```sql
select especialidade,
count(especialidade) as quantidade
from atendimentos
group by especialidade
order by 2
```

### 💡 O que estou praticando?

Utilizei o **`GROUP BY`** para agrupar os registros por especialidade e o **`COUNT()`** para contabilizar os atendimentos de cada grupo.

Também utilizei o **`ORDER BY`** para organizar os resultados de acordo com a quantidade de atendimentos.

---

# 📚 O que aprendi?

Nesta etapa, comecei a transformar os registros individuais da base em **informações resumidas**, utilizando funções de agregação.

### 🧠 Principais conceitos

| 💻 Função / Comando | 🎯 Para que serve                          |
| :-----------------: | :----------------------------------------- |
|      `COUNT()`      | Contar registros                           |
|       `AVG()`       | Calcular a média                           |
|       `MIN()`       | Encontrar o menor valor                    |
|       `MAX()`       | Encontrar o maior valor                    |
|      `GROUP BY`     | Agrupar registros de acordo com uma coluna |
|      `ORDER BY`     | Ordenar os resultados                      |

### 💭 Principal aprendizado

> Com as funções de agregação, posso transformar vários registros em **informações resumidas que ajudam a entender uma base de dados**.

Também comecei a perceber que conhecer a estrutura e as limitações da base é uma parte importante do processo de análise.

---

# 📈 Meu progresso

<div align="center">

### 📊 Etapa 03

**Agregações**

`████████████████████` **100%**

🟢 **Concluído**

</div>

---

<div align="center">

⭐ **Etapa 03 concluída!**

*Avançando nos estudos e aprendendo a transformar dados em informações para análise.*

</div>
