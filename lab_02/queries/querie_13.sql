/*
Инструкция SELECT, использующая вложенные подзапросы с уровнем вложенности 3

Вывести животных, чье лечение болезни 
*/

SELECT id, animal_name, kind
FROM animals
WHERE id IN
	(SELECT id_treatment, cost
	 FROM treatment
	 GROUP BY id_treatment
	 HAVING AVG(cost) = 
						(SELECT MAX(C)
		 				 FROM (SELECT AVG(cost) AS C
		 				 	   FROM treatment
							   GROUP BY id_treatment
							   )
							   AS OD
						)
	 )