USE corinnegottlieb_db;

-- CREATE TABLE DolphinX(
--     name VARCHAR(50) NOT NULL PRIMARY KEY,
--     color VARCHAR(20),
--     height INT,
--     healthy tinyint NOT NULL DEFAULT 1
-- )

-- ALTER TABLE Dolphin CHANGE healthy NOT NULL DEFAULT 1;
-- SELECT * FROM Dolphin;
-- ALTER TABLE DolphinX MODIFY healthy tinyint DEFAULT 1;
INSERT INTO DolphinX(name, color, height)
VALUES("Corinne", "grey", 2);

-- EXERCISE 1
-- SELECT name
-- FROM Dolphin
-- WHERE height > 2;

-- EXERCISE 2
-- SELECT name
-- FROM Dolphin
-- WHERE name LIKE '%on%';

-- EXERCISE 3
-- DELETE FROM Dolphin
-- WHERE height < 2
-- AND color = 'blue';

-- EXERCISE 4
-- UPDATE Dolphin
-- SET height = 6
-- WHERE name = 'Daron';

-- EXERCISE 5
-- UPDATE Dolphin
-- SET healthy = 1
-- WHERE color = 'green'
-- OR color = 'brown';

-- EXERCISE 6


-- SELECT name, height
-- FROM Dolphin
-- WHERE healthy = 1
-- ORDER BY height DESC;

SELECT *
FROM DolphinX;
