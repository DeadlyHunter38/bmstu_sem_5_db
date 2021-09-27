/*
Инструкция SELECT, использующая предикат сравнения
*/
SELECT DISTINCT animals.id, animals.kind, animals.age  
FROM animals
WHERE animals.age >= 5 AND animals.age <= 15 and animals.kind = 'Собака'