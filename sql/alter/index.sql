alter table stocks drop column if exists search_stocks;
alter table stocks
add search_stocks tsvector
generated always as(
	setweight(to_tsvector('english', name), 'A') :: tsvector
) stored;
