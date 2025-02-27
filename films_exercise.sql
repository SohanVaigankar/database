-- SELECT DATABASE();
-- SHOW TABLES;
-- 
-- which categories of movies released in 2018? Fetch with the number of movies
-- 
-- DESC film;
-- 
-- DESC category;
-- 
-- SELECT DISTINCT
--     Category.name,
--     Category.category_id,
--     Film.release_year,
--     Film.film_id,
--     COUNT(Category.category_id) AS "Total movies released in 2018"
-- FROM
--     (
--         (
--             Category
--             INNER JOIN Film_category ON Category.category_id = Film_category.category_id
--         )
--         INNER JOIN Film ON Film_category.film_id = Film.film_id
--     )
-- WHERE
--     Film.release_year = "2018"
-- GROUP BY
--     Category.category_id;
-- 
-- 
-- Update the address of actor id 36 to “677 Jazz Street”
-- SHOW TABLES;
-- DESC actor;
-- DESC address;
-- -- 
-- UPDATE Actor JOIN Address ON Actor.address_id = Address.address_id SET Address.address = "677 Jazz Street" WHERE Actor.actor_id = 36;  
-- -- 
-- SELECT * FROM Actor JOIN Address ON Actor.address_id = Address.address_id WHERE Actor.actor_id = 36;
-- 
-- 
-- Add the new actors (id : 105 , 95) in film ARSENIC INDEPENDENCE (id:41).
-- 
-- SHOW TABLES;
-- DESC film_actor;
-- -- DESC address;
-- INSERT INTO
--     film_actor (actor_id, film_id)
-- VALUES
--     (105, 41),
--     (85, 41);
-- 
--
-- Get the name of films of the actors who belong to India
-- DESC Film;
-- SELECT
--     Film.title AS "Film Title",
--     CONCAT (Actor.first_name, ' ', Actor.last_name) AS "Actor Name",
--     Country.country,
-- FROM
--     (
--         (
--             (
--                 (
--                     Film
--                     INNER JOIN Film_actor ON Film.film_id = Film_actor.film_id
--                 )
--                 INNER JOIN Actor ON Film_actor.actor_id = Actor.actor_id
--             )
--             INNER JOIN Address ON Actor.address_id = Address.address_id
--         )
--         INNER JOIN City ON Address.city_id = City.city_id
--     )
--     INNER JOIN Country ON City.country_id = Country.country_id
-- WHERE
--     Country.country = "India"
-- LIMIT
--     5;
-- DESC Country;
-- 
-- how many actors are from US
-- SHOW TABLES;
-- DESC Film;
-- SELECT
--     COUNT(DISTINCT Actor.actor_id),
--     Country.country
-- FROM
--     (
--         (
--             Actor
--             INNER JOIN Address ON Actor.address_id = Address.address_id
--         )
--         INNER JOIN City ON Address.city_id = City.city_id
--     )
--     INNER JOIN Country ON City.country_id = Country.country_id
-- WHERE
--     Country.country = "United States"
-- LIMIT
--     5;
-- 
-- Get all languages in which films are released in the year between 2001 and 2010.
-- SELECT DISTINCT
--     Language.language_id,
--     Language.name
-- FROM
--     Film
--     LEFT JOIN Language On Film.language_id = Language.language_id
-- WHERE
--     Film.release_year BETWEEN "2001" AND "2010"
-- GROUP BY
--     Language.language_id;
-- 
-- 
-- Get all languages in which films are released in the year between 2001 and 2010.
-- SHOW TABLES;
-- SELECT DISTINCT
--     Film.film_id,
--     Film.title,
--     Film.rating,
--     CONCAT (Actor.first_name, ' ', Actor.last_name) AS "Actor Name"
-- FROM
--     (
--         Film
--         INNER JOIN Film_actor ON Film.film_id = Film_actor.film_id
--     )
--     INNER JOIN Actor ON Film_actor.actor_id = Actor.actor_id
-- WHERE
--     (Film.release_year BETWEEN "2005" AND "2015")
--     AND (Film.rating = "PG")
-- ORDER BY
--     Film.film_id;
-- 
-- 
-- year of lest and most films
-- 
-- SELECT
--     Film.release_year,
--     COUNT(Film.film_id) AS "Least Released"
-- FROM
--     Film
-- GROUP BY
--     Film.release_year
-- ORDER BY
--     COUNT(Film.film_id) ASC
-- LIMIT
--     1;
-- SELECT
--     Film.release_year,
--     COUNT(Film.film_id) AS "Most Released"
-- FROM
--     Film
-- GROUP BY
--     Film.release_year
-- ORDER BY
--     COUNT(Film.film_id) DESC
-- LIMIT
--     1;
-- 
-- 
-- actor who did least movies
-- SELECT
--     Actor.actor_id,
--     CONCAT (Actor.first_name, ' ', Actor.last_name) AS "Actor Name",
--     COUNT(*) AS "Total Movies"
-- FROM
--     Actor
--     JOIN Film_actor ON Actor.actor_id = Film_actor.actor_id
-- GROUP BY
--     Actor.actor_id
-- ORDER BY
--     COUNT(*) ASC
-- LIMIT
--     1;
--
-- 
