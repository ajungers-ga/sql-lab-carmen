-- TEST COMMAND AND SAMPLE OUTPUT
-- Record your query (or queries, some clues require more than one) below the clue, then comment out the output below it
-- use two `-` to comment at the start of a line, or highlight the text and press `⌘/` to toggle comments
-- EXAMPLE: SELECT ALL FROM THE TABLE COUNTRY AND LIMIT IT TO ONE ENTRY

SELECT * FROM COUNTRY LIMIT 1;

--  -[ RECORD 1 ]--+--------------------------
-- code           | AFG
-- name           | Afghanistan
-- continent      | Asia
-- region         | Southern and Central Asia
-- surfacearea    | 652090
-- indepyear      | 1919
-- population     | 22720000
-- lifeexpectancy | 45.9
-- gnp            | 5976.00
-- gnpold         |
-- localname      | Afganistan/Afqanestan
-- governmentform | Islamic Emirate
-- headofstate    | Mohammad Omar
-- capital        | 1
-- code2          | AF


-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.

SELECT name, population
FROM country
WHERE region = 'Southern Europe'
ORDER BY population ASC
LIMIT 1;

-- Answer:
--  name                          | population
--  Holy See (Vatican City State) | 1000





-- Clue #2: Carmen was seen attending language classes in this country's officially recognized language.

SELECT language
FROM countrylanguage
WHERE countrycode = 'VAT' AND isofficial = true;

-- Answer:
--  language
--  ---------
--  Italian





-- Clue #3: Carmen moved on to a country where people speak only the language she was learning (Italian).

SELECT cl.countrycode, c.name
FROM countrylanguage cl
JOIN country c ON cl.countrycode = c.code
WHERE cl.language = 'Italian'
GROUP BY cl.countrycode, c.name
HAVING COUNT(*) = 1 AND BOOL_OR(cl.isofficial) = true;

-- Answer:
--  countrycode | name
--  ------------+-------------------------------
--  CHE         | Switzerland
--  ITA         | Italy
--  VAT         | Holy See (Vatican City State)
--  SMR         | San Marino

-- Chosen destination: Italy





-- Clue #4: Find the other city in Italy Carmen might be flying to (not the one named "Italy" or the capital Rome).

SELECT name
FROM city
WHERE countrycode = 'ITA';

-- Answer:
--  name
--  ---------
--  Roma
--  Milano
--  Napoli
--  Torino
--  Palermo
--  ...
--  Chosen city: Milano





-- Clue #5: Carmen pulled a switch – she's headed to South America, to a city with a name like "Milan" but that ends differently.

SELECT name, countrycode
FROM city
WHERE name ILIKE 'mil%' AND countrycode IN (
  SELECT code FROM country WHERE continent = 'South America'
);

-- Answer:
--  name    | countrycode
--  --------+-------------
--  Milagro | ECU

SELECT name FROM country WHERE code = 'ECU';

-- Answer:
--  name
--  ---------
--  Ecuador





-- Clue #6: Carmen is headed toward the capital of Ecuador – we need to intercept her there.

SELECT capital FROM country WHERE code = 'ECU';

-- Answer:
--  capital
--  --------
--  594

SELECT name FROM city WHERE id = 594;

-- Answer:
--  name
--  --------
--  Quito





-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock.

-- Lucky for us, she's getting cocky. She left us a note, and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.

-- Our playdate of late has been unusually fun –
-- As an agent, I'll say, you've been a joy to outrun.
-- And while the food here is great, and the people – so nice!
-- I need a little more sunshine with my slice of life.
-- So I'm off to add one to the population I find
-- In a city of ninety-one thousand and now, eighty five.


-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.

SELECT name, population, countrycode
FROM city
WHERE population = 91084;

-- Answer:
--  name         | population | countrycode
--  ------------+------------+-------------
--  Santa Monica | 91084     | USA

SELECT name FROM country WHERE code = 'USA';

-- Answer:
--  name
--  --------
--  United States




