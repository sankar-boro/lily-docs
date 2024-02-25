CREATE KEYSPACE sankar WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};

-- Create blog tables

CREATE TABLE blogs (
    blogId INT,
    authorId INT,
    title varchar,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (blogId, createdAt)
) WITH CLUSTERING ORDER BY (createdAt DESC);
CREATE TABLE blog (
    blogId INT,
    uniqueId INT,
    parentId INT,
    authorId INT,
    title varchar,
    body TEXT.
    url TEXT.
    identity smallINT,
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (blogId, uniqueId)
);
CREATE TABLE userblogs (
    blogId INT,
    authorId INT,
    title varchar,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (authorId, blogId)
) WITH CLUSTERING ORDER BY (blogId DESC);;
CREATE TABLE categoryblogs (
    category TEXT.
    blogId INT,
    authorId INT,
    title varchar,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (category, blogId)
) WITH CLUSTERING ORDER BY (blogId DESC);

-- Create book tables;

CREATE TABLE books (
    bookId INT,
    authorId INT,
    title varchar,
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
    title varchar,
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
    title varchar,
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
    title varchar,
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

-- Categories
CREATE TABLE usercategories (
    authorId INT,
    category varchar,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (authorId)
);
CREATE TABLE allcategories (
    category varchar,
    division varchar,
    PRIMARY KEY (category, division)
);