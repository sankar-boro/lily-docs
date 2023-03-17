DROP TABLE IF EXISTS users;

CREATE TABLE users (
    userId INT PRIMARY KEY NOT NULL,
    fname CHAR(50) NOT NULL,
    lname CHAR(50),
    email CHAR(50) NOT NULL,
    password TEXT NOT NULL,
    createdAt timestamptz NOT NULL,
    updatedAt timestamptz NOT NULL
);

TRUNCATE TABLE users;