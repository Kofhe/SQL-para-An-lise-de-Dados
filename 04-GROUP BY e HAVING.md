# 📊 Etapa 04 — GROUP BY e HAVING

> 🧠 **Avançando nos estudos de SQL: agrupando dados, criando resumos e filtrando resultados de agregações em uma base de dados hospitalar.**

Nesta quarta etapa, aprofundei o uso do **`GROUP BY`** e comecei a trabalhar com o **`HAVING`**, permitindo analisar grupos de registros e aplicar condições sobre os resultados das agregações.📊

---

<div align="center">

### 📚 Conceitos praticados

<img src="https://img.shields.io/badge/GROUP%20BY-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/HAVING-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/COUNT()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/AVG()-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/ORDER%20BY-4479A1?style=for-the-badge">
<img src="https://img.shields.io/badge/DESC-4479A1?style=for-the-badge">

</div>

---

## 🎯 Objetivo da etapa

Nesta etapa, pratiquei consultas para:

* 🏥 Agrupar atendimentos por unidade
* 🚨 Agrupar atendimentos por prioridade
* 📋 Agrupar registros por especialidade
* 🔢 Filtrar grupos de acordo com sua quantidade de registros
* 📊 Calcular médias para diferentes grupos
* 🔎 Ordenar grupos pela quantidade de atendimentos
* 🧠 Combinar funções de agregação com `GROUP BY` e `HAVING`

---

# 🧩 Desafios

## 🏥 Desafio 01 — Atendimentos por unidade

**Pergunta:**

> Liste cada unidade e a quantidade de atendimentos existentes em cada uma.

### 💻 Consulta SQL

```sql
SELECT unidade,
    count(id_atendimento) as total_atendimentos
from atendimentos
GROUP BY unidade;
```

### 💡 O que estou praticando?

Utilizei o **`GROUP BY`** para separar os atendimentos por unidade e o **`COUNT()`** para contabilizar quantos registros pertencem a cada grupo.

---

## 🚨 Desafio 02 — Atendimentos por prioridade

**Pergunta:**

> Liste cada prioridade e a quantidade de atendimentos de cada tipo.

### 💻 Consulta SQL

```sql
SELECT prioridade,
       COUNT(*) AS quantidade
FROM atendimentos
GROUP BY prioridade;
```

### 💡 O que estou praticando?

Neste desafio, agrupei os atendimentos de acordo com a coluna `prioridade` e utilizei `COUNT()` para descobrir a quantidade de registros em cada grupo.

---

## 🏥 Desafio 03 — Especialidades com mais de 2 atendimentos

**Pergunta:**

> Liste as especialidades e suas respectivas quantidades de atendimentos. Depois, mostre somente as especialidades que possuem mais de 2 atendimentos.

### 💻 Consulta SQL

```sql
select especialidade,
    count(id_atendimento)
from atendimentos
group by especialidade
having count(*) >2
```

### 💡 O que estou praticando?

Aqui comecei a utilizar o **`HAVING`** para filtrar os resultados depois que os registros foram agrupados.

Diferente do `WHERE`, que filtra registros individuais, o `HAVING` permite aplicar condições sobre grupos criados por funções de agregação.

---

## 📋 Desafio 04 — Status com mais de 3 atendimentos

**Pergunta:**

> Liste cada status e a quantidade de atendimentos. Depois, mostre somente os status que possuem mais de 3 atendimentos.

### 💻 Consulta SQL

```sql
select status,
    count(id_atendimento)
from atendimentos
group by status
having count(*) >3
```

### 💡 O que estou praticando?

Utilizei `GROUP BY` para agrupar os atendimentos por status e `HAVING` para manter somente os grupos que possuem mais de 3 registros.

---

## 📊 Desafio 05 — Média de idade por especialidade

**Pergunta:**

> Calcule a idade média dos pacientes para cada especialidade.

### 💻 Consulta SQL

```sql
SELECT especialidade,
       AVG(idade) AS media_idade
FROM atendimentos
GROUP BY especialidade;
```

### 💡 O que estou praticando?

Neste desafio, utilizei a função **`AVG()`**, que calcula a **média aritmética** dos valores de uma coluna.

Nesse caso:

```sql
AVG(idade)
```

calcula a média das idades dos pacientes.

Também utilizei o **`GROUP BY especialidade`**, fazendo com que o cálculo seja realizado **separadamente para cada especialidade**, em vez de calcular uma única média considerando todos os pacientes da tabela.

Por exemplo, se uma especialidade tiver pacientes com idades `30`, `40` e `50`, o `AVG()` calcula:

**(30 + 40 + 50) ÷ 3 = 40**

Assim, o resultado apresenta a **idade média dos pacientes de cada especialidade**.

---

## 🏆 Desafio 06 — Unidade com maior quantidade de atendimentos

**Pergunta:**

> Descubra qual unidade possui a maior quantidade de atendimentos.

### 💻 Consulta SQL

```sql
SELECT unidade,
       COUNT(id_atendimento) AS quantidade
FROM atendimentos
GROUP BY unidade
ORDER BY id_atendimento DESC;
```

### 💡 O que estou praticando?

Agrupei os registros por unidade, contei a quantidade de atendimentos e utilizei **`ORDER BY ... DESC`** para colocar a maior quantidade primeiro.

Esse tipo de consulta é útil para identificar rapidamente os grupos com maior volume de registros.

---

# 📚 O que aprendi?

Nesta etapa, comecei a combinar diferentes recursos do SQL para realizar análises mais completas.

### 🧠 Principais conceitos

| 💻 Comando | 🎯 Para que serve                          |
| :--------: | :----------------------------------------- |
| `GROUP BY` | Agrupar registros de acordo com uma coluna |
|  `HAVING`  | Filtrar grupos após uma agregação          |
|  `COUNT()` | Contar registros                           |
|   `AVG()`  | Calcular médias                            |
| `ORDER BY` | Ordenar resultados                         |
|   `DESC`   | Ordenar do maior para o menor              |


---

# 📈 Meu progresso

<div align="center">

### 📊 Etapa 04

**GROUP BY e HAVING**

`████████████████████` **100%**

🟢 **Concluído**

</div>

---

<div align="center">

⭐ **Etapa 04 concluída!**

*Aprendendo a agrupar, resumir e filtrar dados para transformar registros em informações úteis.*

</div>
