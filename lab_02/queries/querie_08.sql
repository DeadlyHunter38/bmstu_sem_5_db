/*
Инструкция SELECT, использующая скалярные подзапросы в выражении столбцов

Вычислить общее число енотов
*/

SELECT id, animals.kind, animal_name,
						(SELECT MAX(treatment.cost)
						 FROM treatment
						 WHERE animals.id_treatment = treatment.id_treatment) AS avg_treatment_price
FROM animals
WHERE animals.age > 15