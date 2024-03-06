-- Stocks

alter table stocks drop search_stocks;
alter table stocks
add search_stocks tsvector
generated always as(
	setweight(to_tsvector('english', name), 'A') :: tsvector
) stored;

select * from stocks where search_stocks @@ to_tsquery('bricks');
select * from stocks where search_stocks @@ plainto_tsquery('Cement');

-- Stocks
-----------------------------------------------------------------------------

SELECT * FROM stocks WHERE search_stocks @@ to_tsquery('english', 'cement');