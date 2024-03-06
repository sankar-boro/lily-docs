SELECT * FROM public.netflix_shows;
SELECT title, type, release_year FROM public.netflix_shows;
SELECT * FROM public.netflix_shows WHERE release_year = 2022;
SELECT * FROM public.netflix_shows ORDER BY release_year DESC;
SELECT * FROM public.netflix_shows LIMIT 10;
SELECT release_year, COUNT(*) FROM public.netflix_shows GROUP BY release_year;
SELECT release_year, COUNT(*) FROM public.netflix_shows GROUP BY release_year HAVING COUNT(*) > 10;
SELECT n.title, g.genre FROM netflix_shows n INNER JOIN genres g ON n.genre_id = g.id;
SELECT * FROM public.netflix_shows WHERE release_year = (SELECT MAX(release_year) FROM public.netflix_shows);
SELECT AVG(release_year) AS avg_release_year FROM public.netflix_shows;
SELECT 
    title,
    CASE 
        WHEN release_year < 2000 THEN 'Old'
        WHEN release_year >= 2000 AND release_year < 2020 THEN 'Mid'
        ELSE 'New'
    END AS release_category
FROM public.netflix_shows;
SELECT 
    title,
    release_year,
    AVG(release_year) OVER (PARTITION BY type) AS avg_release_year_by_type
FROM public.netflix_shows;


-- GROUP BY
SELECT release_year, country, COUNT(*) FROM public.netflix_shows GROUP BY release_year, country ORDER BY release_year DESC LIMIT 25;

SELECT EXTRACT(YEAR FROM date_added) AS year_added, COUNT(*) FROM public.netflix_shows GROUP BY year_added;
SELECT 
    CASE
        WHEN release_year BETWEEN 2000 AND 2010 THEN '2000-2010'
        WHEN release_year BETWEEN 2011 AND 2020 THEN '2011-2020'
        ELSE 'Before 2000 or After 2020'
    END AS release_range,
    COUNT(*)
FROM public.netflix_shows
GROUP BY release_range;
SELECT 
    AVG(release_year) AS avg_release_year, 
    COUNT(*) AS num_shows
FROM public.netflix_shows
GROUP BY type;
SELECT 
    release_year, 
    COUNT(*)
FROM public.netflix_shows
GROUP BY release_year
HAVING COUNT(*) > 10;

SELECT 
    release_year, 
    COUNT(*)
FROM public.netflix_shows
GROUP BY release_year
ORDER BY release_year DESC;

SELECT 
    release_year, 
    AVG(num_shows) AS avg_num_shows
FROM (
    SELECT 
        release_year, 
        COUNT(*) AS num_shows
    FROM public.netflix_shows
    GROUP BY release_year LIMIT 100
) AS subquery
GROUP BY release_year;
