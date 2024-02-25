CREATE TABLE books (
    bookId serial PRIMARY KEY NOT NULL,
    authorId INT,
    title TEXT,
    body TEXT,
    url TEXT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE book (
    bookId serial PRIMARY KEY NOT NULL,
    pageId INT,
    uniqueId INT,
    parentId INT,
    authorId INT,
    title TEXT,
    body TEXT,
    url TEXT,
    identity smallINT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);