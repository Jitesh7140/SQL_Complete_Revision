-- select title,released_year,
-- CASE
-- 	WHEN "( condition )" THEN "(Output if condition is true)"
--     ELSE "(  Output if condition is false)"
-- END AS '(Alias name for the output column)'
-- from books


-- Example of using CASE statement in SQL to categorize books based on their release year
select title,released_year,
 CASE
	WHEN released_year >=2000 THEN 'After 2000'
    ELSE "Before 2000"
END AS 'Year_Mode'
from books;

-- Example of using CASE statement in SQL to categorize books based on their stock quantity  
select title,released_year,
 CASE
	WHEN stock_quantity between 0 AND 50 THEN '*'
    WHEN stock_quantity between 51 AND 100 THEN '* *'
    ELSE "* * *"
END AS 'Stock Left'
from books