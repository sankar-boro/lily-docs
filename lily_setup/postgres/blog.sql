CREATE TABLE blogs (
    blogId serial PRIMARY KEY NOT NULL,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE blog (
    blogId serial PRIMARY KEY NOT NULL,
    uniqueId INT,
    parentId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    identity smallINT,
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE userblogs (
    blogId serial PRIMARY KEY NOT NULL,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE categoryblogs (
    category TEXT.
    blogId INT,
    authorId INT,
    title TEXT,
    body TEXT.
    url TEXT.
    metadata TEXT.
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
