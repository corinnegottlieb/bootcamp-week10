USE corinnegottlieb_db;


-- CREATE TABLE pokemon_type(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20) 
-- );

-- CREATE TABLE town (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20) 
-- );

-- CREATE TABLE trainer(
--     id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20),
--     town INT,
    
--     FOREIGN KEY (town) REFERENCES town(id)
-- );

-- CREATE TABLE pokemon(
--   id INT NOT NULL PRIMARY KEY,
--   name VARCHAR(20),
--   height INT,
--   weight INT,
--   type INT,

--   FOREIGN KEY(type) REFERENCES pokemon_type(id)
-- );

-- CREATE TABLE pokemon_trainer(
--     p_id INT,
--     t_id INT,

--     FOREIGN KEY (p_id) REFERENCES pokemon(id),
--     FOREIGN KEY (t_id) REFERENCES trainer(id)
-- );

-- SELECT *
-- FROM pokemon_type


-- SELECT *
-- FROM town


-- SELECT *
-- FROM trainer

-- SELECT *
-- FROM pokemon

-- SELECT *
-- FROM pokemon_trainer

-- DELETE FROM pokemon_trainer


-- SELECT MAX(weight)
-- FROM pokemon
