---1. Give the name, release year, and worldwide gross of the lowest grossing movie.

SELECT specs.film_title, specs.release_year, MIN(revenue.worldwide_gross) AS worldwide_gross
FROM specs
INNER JOIN revenue ON specs.movie_id = revenue.movie_id
GROUP BY specs.film_title, specs.release_year
ORDER BY specs.release_year DESC;

--Answer:v


--2. What year has the highest average imdb rating?
SELECT specs.release_year, AVG(rating.imdb_rating) AS Avg_Rating
FROM specs
INNER JOIN rating ON specs.movie_id=rating.movie_id
GROUP BY specs.release_year
ORDER BY Avg(rating.imdb_rating) DESC;

--Answer: 1991


--3. What is the highest grossing G-rated movie? Which company distributed it?
SELECT MAX(revenue.worldwide_gross)HighestGross,specs.film_title,specs.mpaa_rating,distributors.company_name
FROM distributors
inner JOIN specs on specs.domestic_distributor_id = distributors.distributor_id
inner JOIN revenue on specs.movie_id = revenue.movie_id
group by specs.film_title,specs.mpaa_rating,distributors.company_name
order by max(revenue.worldwide_gross) DESC;

--Answer: Avengers, Walt Disney



---4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.
SELECT company_name
FROM distributors
INNER JOIN distributors.company_name ON specs.film_title=distributors.company_name

--5. Write a query that returns the five distributors with the highest average movie budget.
SELECT 

--6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?

--7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours