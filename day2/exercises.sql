USE corinnegottlieb_db;


-- CREATE TABLE ethnicity(
-- id INT PRIMARY KEY,
-- name VARCHAR(20)
-- );

-- CREATE TABLE gender(
-- id INT PRIMARY KEY,
-- name VARCHAR(20)
-- );

-- CREATE TABLE symptoms(
-- family INT PRIMARY KEY,
-- fever BOOLEAN,
-- blue_whelts BOOLEAN,
-- low_bp BOOLEAN
-- );

-- CREATE TABLE disease(
-- name VARCHAR(20) PRIMARY KEY,
-- survival_rate FLOAT
-- );


-- CREATE TABLE patient(
-- p_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- p_ethnicity INT,
-- p_gender INT,
-- p_symptoms_family INT,
-- p_disease VARCHAR(20),

-- FOREIGN KEY(p_ethnicity) REFERENCES ethnicity(id),
-- FOREIGN KEY(p_gender) REFERENCES gender(id),
-- FOREIGN KEY(p_symptoms_family) REFERENCES symptoms(family),
-- FOREIGN KEY(p_disease) REFERENCES disease(name)
-- );

-- EXERCISE 2
-- SELECT COUNT(*)
-- FROM patient
-- WHERE p_disease IS NOT NULL;

-- EXERCISE 3
-- SELECT COUNT(*)
-- FROM patient
-- WHERE p_disease= "cabbage disease";

-- EXERCISE 4
SELECT p_id, survival_rate
FROM patient, disease
WHERE patient.p_disease IS NOT NULL AND
disease.name=patient.p_disease
ORDER BY patient.p_id;

-- EXERCISE 5
-- SELECT p_symptoms_family, COUNT(*)
-- FROM patient
-- WHERE p_disease="cabbage disease"
-- GROUP BY p_symptoms_family;

-- EXERCISE 6
-- SELECT name, COUNT(*)
-- FROM ethnicity, patient
-- WHERE patient.p_disease="lettuce disease" AND
-- ethnicity.id = patient.p_ethnicity
-- GROUP BY ethnicity.name;


-- SELECT *
-- FROM patient