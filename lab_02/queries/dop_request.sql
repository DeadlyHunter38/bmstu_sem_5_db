/*
  Защита:
  Выбрать какого-либо ветеринара. Найти всех животных, которых он оперировал
  со средней тяжестью диагноза и выписать вид животных и их количество;
  отсортировать по количеству (уменьшение)
*/

SELECT animals.id, animals.animal_name, animals.kind, vet.surname, diagn.degree_severity, count(animals.kind)
FROM animals 
	JOIN veterinarian AS vet ON animals.id_vet = vet.id_vet
	JOIN diagnosis AS diagn ON animals.id_diagnosis = diagn.id_diagnosis
WHERE vet.surname IN (SELECT veterinarian.surname
								FROM veterinarian
								WHERE veterinarian.surname = 'Андрианова')
	 AND diagn.degree_severity = 'Средняя'
GROUP BY animals.id, animals.animal_name, animals.kind, vet.surname, diagn.degree_severity
ORDER BY count DESC