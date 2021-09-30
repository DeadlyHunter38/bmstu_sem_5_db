SELECT id, kind, animal_name, veterinarian.surname 
FROM animals JOIN 
	(SELECT vet.surname 
	 FROM veterinarian AS vet
	 )