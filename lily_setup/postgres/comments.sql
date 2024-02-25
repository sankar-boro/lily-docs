CREATE TABLE comments (
    id INT,
    userId INT,
    userName TEXT,
    smUserImageUrl TEXT,
    documentId INT,
    commentText TEXT.
    parentId INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
) WITH CLUSTERING ORDER BY (documentId DESC);
