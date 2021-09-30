/*
Инструкция SELECT, использующая рекурсивное обобщенное
табличное выражение
*/
CREATE TABLE vets_test
(
	id_vet INT NOT NULL PRIMARY KEY,
	surname VARCHAR(50),
	qualification VARCHAR(20)
);

WITH RECURSIVE recursivetest(id, surname, qualification) AS
(
	SELECT id_vet, surname, qualification
	FROM veterinarian AS vet
	WHERE vet.id_vet = 2
	UNION ALL
	--определение рекурсивного элемента
	SELECT vet.id_vet, vet.surname, vet.qualification
	FROM veterinarian AS vet
	JOIN recursivetest rec on vet.id_vet = rec.id
)
SELECT *
FROM recursivetest;