CREATE TABLE corporation
 (corp_id SMALLINT,
 name VARCHAR(30),
 CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
 );

INSERT INTO corporation (corp_id, name)
VALUES (27, 'Acme Paper Corporation');

CREATE TABLE person
 (person_id SMALLINT UNSIGNED,
 fname VARCHAR(20),
 lname VARCHAR(20),
 eye_color CHAR(2),
 birth_date DATE,
 street VARCHAR(30),
 city VARCHAR(20),
 state VARCHAR(20),
 country VARCHAR(20),
 postal_code VARCHAR(20),
 CONSTRAINT pk_person PRIMARY KEY (person_id)
 );

CREATE TABLE favorite_food(
    person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
    REFERENCES person (person_id)
);

CREATE TABLE favorite_food(
    person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
    REFERENCES person (person_id)
);

INSERT INTO person(person_id, fname, lname, eye_color, birth_date)
 VALUES (1, 'William','Turner', 'BR', '1972-05-27');

INSERT INTO favorite_food (person_id, food) VALUES (1, 'pizza');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'cookies');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'nachos');
INSERT INTO person(person_id, fname, lname, eye_color, birth_date,
 street, city, state, country, postal_code)
 VALUES (null, 'Susan','Smith', 'BL', '1975-11-02',
  '23 Maple St.', 'Arlington', 'VA', 'USA', '20220');

-- update
UPDATE person
SET street = '1225 Tremont St.', city = 'Boston',state = 'MA', country = 'USA', postal_code = '02138'
WHERE person_id = 1;

-- delete
DELETE FROM person
WHERE person_id = 2;
