/*
Инструкция SELECT, использующая предикат BETWEEN
*/

SELECT id, animals.animal_name, animals.id_treatment, treatment.date
FROM animals, treatment
WHERE treatment.date BETWEEN '2020-01-01' AND '2020-12-31'