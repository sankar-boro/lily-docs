CREATE TABLE app(
    app_id serial PRIMARY KEY NOT NULL,
    prev_version TEXT,
    version TEXT,
    name TEXT,
    versions TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO app(prev_version, version, name, versions) VALUES('0.0.1', '0.0.1', 'Cloud Civil', '');