# Carmen Sandiego SQL Lab 🕵️‍♀️

## Overview

This project was part of my SQL Lab homework in Unit 4 at General Assembly. The objective: track down and capture the notorious thief **Carmen Sandiego** using real SQL queries over a world database.

I worked through 7 clues, each one requiring a deeper understanding of querying data with PostgreSQL, joining tables, filtering with `WHERE`, pattern matching with `ILIKE`, and performing subqueries.

---

## What I Learned

- **Filtering with WHERE** to locate data by region, population, and language.
- **Sorting and limiting results** to find the least populated country or capital city.
- **Joining tables** (`JOIN`) to combine country and language data.
- **Subqueries** to filter based on another query’s result.
- **Pattern matching** with `ILIKE` to find similarly named cities.
- **Using metadata and IDs** to lookup and connect table data (`capital` ID to city name).
- **Using `GROUP BY` and `HAVING`** to isolate countries with a single official language.

---

## Clues Solved

###  Clue 1
Find the least populated country in Southern Europe:  
**Answer:** Holy See (Vatican City State)

###  Clue 2
Determine the official language spoken there:  
**Answer:** Italian

###  Clue 3
Find another country where **only** Italian is spoken:  
**Answer:** Italy

###  Clue 4
Determine which city (not Rome) she’s flying to:  
**Answer:** Milan

###  Clue 5
Carmen pulled a switch — find a similar city in South America:  
**Answer:** Milagro, Ecuador

###  Clue 6
She’s heading toward Ecuador’s capital:  
**Answer:** Quito

###  Clue 7
Carmen’s final destination based on a cryptic population clue:  
**Answer:** Santa Monica, United States

---

## Final Reflections

This lab was a fun and clever way to reinforce real SQL concepts in a narrative setting. It helped me feel more comfortable chaining together logic, interpreting data relationships, and using SQL as an investigative tool. I especially appreciated using joins and subqueries in ways that mimicked real-world scenarios.

---

## Commit History

-  `Commit: CARMEN SANDIEGO - Halfway there! Hot on her trail.`
-  `Commit: CARMEN SANDIEGO - I found Carmen Sandiego`

---

## Tech Used

- PostgreSQL 16
- CLI with `psql`
- SQL query syntax: `SELECT`, `JOIN`, `GROUP BY`, `HAVING`, `ILIKE`, subqueries

