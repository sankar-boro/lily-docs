CREATE TABLE organizations(
    org_id serial,
    name VARCHAR(50) NOT NULL,
    address TEXT,
    phone VARCHAR(15),
    logo TEXT,
    gst VARCHAR(25),
    pincode VARCHAR(10),
    metadata TEXT,
    user_id INT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_orgs(
    user_org_id serial,
    user_id INT NOT NULL,
    org_id INT NOT NULL,
    status INT NOT NULL
);