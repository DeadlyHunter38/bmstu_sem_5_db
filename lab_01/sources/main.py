import random

MAX_SIZE = 1000
YOUNGEST = 25
OLDEST = 60
LOWEST_FLOOR = 1
UPPEST_FLOOR = 5
LOWEST_COST = 1000
MOST_COST = 10000
LOWEST_DURATION = 5
MOST_DURATION = 30
LOWEST_AGE = 1
MOST_AGE = 20
IS_HOSPITALIZATION = "Требуется"
NOT_HOSPITALIZATION = "Не требуется"
PATH_VETS = "data/veterinarians.txt"
PATH_QUALIFICATIONS = "data/qualifications.txt"
PATH_TREATMENTS = "data/treatments.txt"
PATH_ANIMALS = "data/animals.txt"
PATH_ANIMAL_NAMES = "data/animal_names.txt"
PATH_DIAGNOSISES = "data/diagnosis.txt"

def generate_veterinarians():
    with open(PATH_VETS, "r") as file_veterinarians:
        surnames = [line.strip() for line in file_veterinarians]

    ages = [random.randint(YOUNGEST, OLDEST) for i in range(MAX_SIZE)]
    with open(PATH_QUALIFICATIONS, "r") as file_qualification:
        qualifications = [line.strip() for line in file_qualification]
    cabinets = [random.randint(LOWEST_FLOOR, UPPEST_FLOOR)]

def genetate_treatments():
    with open(PATH_TREATMENTS, "r") as file_names:
        names = [line.strip() for line in file_names]

    durations = [random.randint(LOWEST_DURATION, MOST_DURATION) for i in range(MAX_SIZE)]
    costs = [random.randint(LOWEST_COST, MOST_COST) * 50 for i in range(MAX_SIZE)]

    hospitalizations = [NOT_HOSPITALIZATION if random.randint(0, 1) == 0 else IS_HOSPITALIZATION
                        for i in range(MAX_SIZE)]

def generate_animals():
    with open(PATH_ANIMALS, "r") as file_animals:
        kind = [line.strip() for line in file_animals]

    with open(PATH_ANIMAL_NAMES, "r") as file_animal_names:
        names = [line.strip() for line in file_animal_names]

def generate_diagnosises():
    with open(PATH_DIAGNOSISES) as file_diagnosises:
        diagnosises = [line.strip() for line in file_diagnosises]

if __name__ == "__main__":
    generate_veterinarians()