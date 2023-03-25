CREATE TABLE categories (
    id serial PRIMARY KEY,
    name TEXT NOT NULL,
    createdAt timestamptz DEFAULT CURRENT_TIMESTAMP,
    updatedAt timestamptz DEFAULT CURRENT_TIMESTAMP
);