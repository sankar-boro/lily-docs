use sankar;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS userCredentials;

CREATE TABLE users (
    userId INT,
    fname TEXT,
    lname TEXT,
    email TEXT,
    password blob,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (userId)
);

CREATE TABLE userCredentials (
    userId INT,
    fname TEXT,
    lname TEXT,
    email TEXT,
    password blob,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (email)
);

TRUNCATE TABLE sankar.users;
TRUNCATE TABLE sankar.userCredentials;

