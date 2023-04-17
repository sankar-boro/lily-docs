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


ALTER TABLE users ADD COLUMN uname tsvector;
UPDATE users SET uname = to_tsvector(fname || ' ' || lname);
CREATE INDEX uname_idx ON users USING GIN (uname);

\d users; 

SELECT fname, lname
FROM users
WHERE uname @@ plainto_tsquery('boro');
