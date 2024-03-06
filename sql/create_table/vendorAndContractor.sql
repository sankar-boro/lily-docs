CREATE TABLE vendors (
    vendor_id serial,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    whatsapp VARCHAR(15),
    address TEXT,
    email VARCHAR(255),
    type VARCHAR(50),
    gst VARCHAR(25),
    images TEXT,
    files TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE org_vendors (
    uid serial PRIMARY KEY,
    org_id INT NOT NULL,
    vendor_id INT NOT NULL
);

CREATE TABLE org_contractors (
    uid serial PRIMARY KEY,
    org_id INT NOT NULL,
    contractor_id INT NOT NULL
);

CREATE TABLE contractors(
    contractor_id serial,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    whatsapp VARCHAR(15),
    address TEXT,
    email VARCHAR(255),
    type VARCHAR(50),
    metadata TEXT,
    images TEXT,
    files TEXT,
    rate NUMERIC(10, 2),
    rate_type VARCHAR(10),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contractorRate(
    contractor_rate_id serial,
    contractor_id INT NOT NULL,
    org_id INT NOT NULL,
    project_id INT NOT NULL,
    name TEXT,
    amount NUMERIC(10, 2),
    unit VARCHAR(25),
    work_limit NUMERIC(10, 3),
    billed NUMERIC(10, 3),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);