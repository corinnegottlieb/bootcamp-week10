USE corinnegottlieb_db;

-- CREATE TABLE customer(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20),
--     city VARCHAR(20),
--     gender INT
-- );

-- CREATE TABLE company(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20),
--     industry VARCHAR(20),
--     employees INT
-- );


-- CREATE TABLE purchases (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     item_purchased VARCHAR(20),
--     amount INT,
--     discount FLOAT DEFAULT 0,

--     customer_id INT,
--     company_id INT,
--     FOREIGN KEY(customer_id) REFERENCES customer(id),
--     FOREIGN KEY(company_id) REFERENCES company(id)
-- );


-- INSERT INTO purchases (item_purchased, amount, customer_id, company_id)
-- VALUES("The Everlasting Winds", 2, 1, 1);

-- SELECT *
-- FROM purchases;

-- INSERT INTO customer (id, name, city, gender)
-- VALUES(1000, "Byron Trunks", "Corinth", 3);

-- INSERT INTO company(id, name, industry, employees)
-- VALUES(10, "Twitch", "Entertainment", 800);

-- INSERT INTO purchases (item_purchased, amount, customer_id, company_id)
-- VALUES("The BOOK", 20, 3, 2);

-- SELECT item_purchased, amount, name, industry
-- FROM purchases, company
-- WHERE purchases.company_id = company.id;

-- SELECT  item_purchased, amount, 
--     cu.name AS cust_name,
--     co.name AS comp_name
-- FROM purchases AS p, 
-- customer AS cu, 
-- company AS co
-- WHERE 
-- p.company_id=co.id AND
-- p.customer_id=cu.id;

-- INSERT INTO student VALUES (1, 'Ryan', 1); -- note the use of 1 for TRUE
-- INSERT INTO student VALUES (2, 'Leo', 1); 
-- INSERT INTO student VALUES (3, 'Ernie', 0); -- and 0 for FALSE in SQL

-- INSERT INTO teacher VALUES (1, 'Levine', 1);
-- INSERT INTO teacher VALUES (2, 'Foster', 0);
-- INSERT INTO teacher VALUES (3, 'Schwimmer', 0);


-- CREATE TABLE student_teacher(
--     s_id INT,
--     t_id INT,
--    FOREIGN KEY (s_id)  REFERENCES student(id),
--    FOREIGN KEY (t_id)  REFERENCES teacher(id)
-- );

-- INSERT INTO student_teacher
-- VALUES (3,1);

-- SELECT s.name
-- FROM student AS s, 
-- teacher AS t, 
-- student_teacher AS st
-- WHERE t.name = "Foster" AND
-- s.id=st.s_id AND
-- t.id = st.t_id;

-- SELECT s.name
-- FROM 
--     student AS s, 
--     teacher AS t, 
--     student_teacher AS st
--     WHERE t.name = "Levine" AND
--     s.id = st.s_id AND
--     t.id = st.t_id AND
--     s.is_brillian = 1;
