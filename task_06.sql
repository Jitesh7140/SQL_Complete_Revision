select count(*) from books ;

select released_year , count(*) from  books group  by released_year;

select sum(stock_quantity) from books;

select  avg(released_year) from books;

select  concat(  author_fname, ' ',author_lname ) AS Author , max(pages) AS log_page from books 
group by author_fname , author_lname order by log_page desc limit 1;

select released_year AS year , count(*) AS books, avg(pages) AS avg_pages from books group by year order by year asc

 