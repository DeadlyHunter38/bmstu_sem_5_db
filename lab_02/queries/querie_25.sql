WITH diagnosis AS
(
SELECT id_diagnosis, ROW_NUMBER() OVER(PARTITION by name, date, degree_severity, need_operation ORDER BY name) AS duplicateRecCount
FROM diagnosis
)
-- Now Delete Duplicate Records
DELETE FROM diagnosis
WHERE duplicateRecCount > 1;