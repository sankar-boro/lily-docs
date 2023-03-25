DROP TABLE IF EXISTS users;

CREATE TABLE users (
    userId serial PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT,
    email TEXT NOT NULL,
    pwd TEXT NOT NULL,
    createdAt timestamptz DEFAULT CURRENT_TIMESTAMP,
    updatedAt timestamptz DEFAULT CURRENT_TIMESTAMP
);

TRUNCATE TABLE users;