use sankar;

DROP TABLE IF EXISTS userbooksettings;

CREATE TABLE userbooksettings (
    authorId int,
    bookId timeuuid,
    settings text,
    PRIMARY KEY (authorId, bookId)
);

TRUNCATE TABLE sankar.userbooksettings;
