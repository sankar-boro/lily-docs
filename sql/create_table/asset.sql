CREATE TABLE assets (
    asset_id SERIAL,
    name VARCHAR(255) NOT NULL,
    org_id INT,
    asset_uid TEXT,
    status SMALLINT,
    asset_type TEXT,
    asset_value NUMERIC(10, 2),
    ownership SMALLINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE asset_rates (
    asset_rate_id SERIAL,
    asset_id INT,
    org_id INT,
    name TEXT,
    rate NUMERIC(10, 2),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_assets (
    project_asset_id serial,
    project_id INT NOT NULL,
    asset_id INT NOT NULL,
    asset_rate_id INT,
    user_id INT,
    status INT,
    start_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP
);

CREATE TABLE broken_assets (
    broken_asset_id serial,
    project_id INT NOT NULL,
    asset_id INT NOT NULL,
    user_id INT,
    status INT,
    amount NUMERIC(10, 2),
    start_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP
);

-- CREATE TABLE org_assets (
--     org_asset_id serial,
--     org_id INT NOT NULL,
--     asset_id INT NOT NULL
-- );
