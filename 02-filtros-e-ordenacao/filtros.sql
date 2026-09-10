USE hospital_bi;

SELECT * FROM atendimentos;

#1. Liste todos os atendimentos que são da unidade "Hospital Centro".
SELECT *
FROM atendimentos
WHERE unidade LIKE '%centro%';

#2. Liste os atendimentos cuja idade seja maior que 60.
SELECT *
FROM atendimentos
WHERE idade > 60;

#3. Liste os atendimentos com prioridade "Urgente".
SELECT *
FROM atendimentos
WHERE prioridade = 'Urgente';

#4. Liste somente:
#id_atendimento
#especialidade
#idade
#status
#dos pacientes com idade entre 30 e 50 anos.
SELECT id_atendimento, especialidade, idade, status
FROM atendimentos
WHERE idade BETWEEN 30 AND 50;

#5. Conte quantos atendimentos têm status "Finalizado".
SELECT COUNT(*) AS status_finalizado
FROM atendimentos
WHERE status = 'Finalizado';
