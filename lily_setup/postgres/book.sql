use sankar;

DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS userbooks;
DROP TABLE IF EXISTS book_title;
DROP TABLE IF EXISTS categorybooks;

-- table books is used for rendering books when user is not logged in.
CREATE TABLE books (
    bookId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (bookId, createdAt)
) WITH CLUSTERING ORDER BY (createdAt DESC);
CREATE TABLE book (
    bookId INT,
    pageId INT,
    uniqueId INT,
    parentId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    identity smallINT,
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ((bookId, pageId), uniqueId)
);
CREATE TABLE userbooks (
    bookId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (authorId, bookId)
) WITH CLUSTERING ORDER BY (bookId DESC);
CREATE TABLE categorybooks (
    category TEXT.
    bookId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (category, bookId)
) WITH CLUSTERING ORDER BY (bookId DESC);
CREATE TABLE book_title (
    bookId INT,
    parentId INT,
    uniqueId INT,
    title TEXT.
    identity smallINT,
    PRIMARY KEY (bookId, uniqueId)
) WITH CLUSTERING ORDER BY (uniqueId DESC);


SELECT COUNT(*) FROM books;

TRUNCATE TABLE sankar.books;
TRUNCATE TABLE sankar.book;
TRUNCATE TABLE sankar.userbooks;
TRUNCATE TABLE sankar.categorybooks;
TRUNCATE TABLE sankar.book_title;