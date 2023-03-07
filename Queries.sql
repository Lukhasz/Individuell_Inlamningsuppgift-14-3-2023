-- 1
SELECT title FROM titles;

-- 2
SELECT title FROM titles 
	WHERE year > 2000;

-- 3
SELECT name FROM actors;

-- 4
SELECT rating FROM ratings;

-- 5 
SELECT rating FROM ratings 
	WHERE title_id = 5;

-- 6 
SELECT t.title FROM titles t
	JOIN ratings r ON t.id = r.title_id 
		WHERE r.rating >= 4 
        ORDER BY r.rating DESC;

-- 7 
SELECT name FROM producers;

-- 8 
SELECT t.title FROM titles t 
	JOIN title_producers tp ON t.id = tp.title_id
		WHERE tp.producer_id = 11;

-- 9 
SELECT t.title FROM titles t
	JOIN title_producers tp ON t.id = tp.title_id
		GROUP BY t.id 
			HAVING COUNT(tp.producer_id) > 1;

-- 10
INSERT INTO titles (title, year)
	VALUES ('Taken', 2008);

-- 11 
INSERT INTO actors (name, gender)
	VALUES ('Robin Williams', 'm');

-- 12
INSERT INTO producers (name)
	VALUES ('Quentin Tarantino');

-- 13
INSERT INTO ratings (title_id, rating)
	VALUES (12, 3.9);

-- 14
INSERT INTO title_producers (title_id, producer_id)
	VALUES (11, 14);

-- 15 
UPDATE titles
	SET year = 1995
		WHERE id = 1;

-- 16 
UPDATE actors 
	SET gender = 'f'
		WHERE id = 29;

-- 17 
UPDATE ratings 
	SET rating = 5
		WHERE id = 7;

-- 18 
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM titles 
	WHERE id = 7;
SET FOREIGN_KEY_CHECKS=1;

-- 19
DELETE FROM actors 
	WHERE id = 30;
    
-- 20
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM producers 
	WHERE id = 5;
SET FOREIGN_KEY_CHECKS=1;

-- 21
DELETE FROM ratings 
	WHERE id = 4;




