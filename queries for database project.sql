USE anime_db;

/* 1. Write a query for it Recommend similar anime details like name , type
 to one with genre 'Slice of Life .*/    

SELECT a.anime_name, a.anime_type,a.episodes, g.genre
FROM anime a
 NATURAL JOIN genre_anime g 
WHERE g.genre LIKE '%Slice of Life%';

/*2. Write a query 
Which returns anime have more than 50 episodes
 and are rated above 8.0?  */
SELECT ranking, a.anime_name, a.episodes, r.rating
FROM anime a
NATURAL JOIN anime_ratings r 
WHERE a.episodes > 50 AND r.rating > 8.0;

/* 3. write a query Shows anime licensed by Funimation.*/
SELECT a.anime_name, l.license
FROM anime a
JOIN anime_licenses l ON a.ranking = l.ranking
WHERE l.license = 'Funimation';

/* 4. write a query Which returns  anime with age */
SELECT a.anime_name, g.age
FROM anime a
JOIN genre_anime g ON a.ranking = g.ranking ;

/*5 . Find anime with a  same genre as the anime Naruto*/
SELECT a.anime_name, g.genre
FROM anime a
JOIN genre_anime g ON a.ranking = g.ranking
WHERE g.genre = (
    SELECT genre
    FROM genre_anime
    WHERE ranking = (
        SELECT ranking
        FROM anime
        WHERE anime_name = 'Naruto'
    )
);
/*6 .*/
/**/
/**/
/**/
