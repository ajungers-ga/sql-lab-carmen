# Carmen Sandiego SQL Lab

## Overview

This project was Lab 1 of 5 in my SQL Lab series for Unit 4 at General Assembly.  
The objective: track down and capture the notorious thief Carmen Sandiego using real SQL queries over a structured world database.

Each clue required a deeper understanding of querying in PostgreSQL, including table joins, filtering and much more.

View the next SQL labs in the series:
- Lab 2 – Computers & Televisions: https://github.com/ajungers-ga/sql-lab-computers-televisions
- Lab 3 – Realty: https://github.com/ajungers-ga/sql-lab-realty
- Lab 4 – NFL: https://github.com/ajungers-ga/sql-lab-nfl
- Lab 5 - Flights: https://github.com/ajungers-ga/sql-lab-flights

---

## What I Practiced

- Filtering with `WHERE` to locate data by region, population, and language
- Sorting and limiting results to find specific entries
- Joining tables with `JOIN` to combine country and language data
- Using subqueries to filter based on another query's result
- Pattern matching with `ILIKE` to find similarly named cities
- Linking metadata via foreign keys (e.g. capital ID to city name)
- Using `GROUP BY` and `HAVING` to isolate countries with a single official language

---

## Clues Solved

1. Least populated country in Southern Europe:  
   Answer: Holy See (Vatican City State)

2. Official language spoken there:  
   Answer: Italian

3. Another country where only Italian is spoken:  
   Answer: Italy (after consulting with a colleague - it turns out I misread the clue and needed to find ANOTHER country besides ITALY where that language is spoken by the people.)
   the CORRECT answer would actually be: --  SMR         | San Marino

5. City (not Rome) she’s flying to:  
   Answer: Milan

6. A similar-named city in South America:  
   Answer: Milagro, Ecuador

7. Capital of Ecuador:  
   Answer: Quito

8. Final destination based on population clue:  
   Answer: Santa Monica, United States

---

## Final Reflections

This lab was a fun story that reminded me of the movie 'Catch Me If You Can'. 
It was an engaging way to reinforce the SQL concepts taught through the lessons from our Lead Instructor. 
It helped me become more confident in using `JOIN`, `GROUP BY`, subqueries, and filtering techniques.  
The challenge of connecting multiple clues across different datasets mirrored real-world data exploration tasks and improved my logical thinking with SQL.
---

## Tech Used

- PostgreSQL 16
- CLI with `psql`
- SQL syntax: `SELECT`, `JOIN`, `GROUP BY`, `HAVING`, `ILIKE`, subqueries
