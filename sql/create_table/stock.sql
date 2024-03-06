CREATE TABLE stock_groups(
	group_id serial PRIMARY KEY,
	parent_id INT,
	name TEXT NOT NULL,
	project_id INT NOT NULL
);

CREATE TABLE stocks (
	stock_id serial PRIMARY KEY,
	sgroup_id INT,
	org_id INT NOT NULL,
	project_id INT NOT NULL,
    vendor_id INT,
	name TEXT NOT NULL,
    alert_amount NUMERIC(10, 3),
    rate NUMERIC(10, 2),
    unit VARCHAR (10),
	total NUMERIC(10, 3),
	used NUMERIC(10, 3),
    updated_at TIMESTAMP,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stock_requests (
	request_id serial PRIMARY KEY,
	stock_id INT,
	project_id INT NOT NULL,
    quantity NUMERIC(10, 3),
	verification TEXT,
	status VARCHAR(25),
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- alert_amount,rate,total,used,

CREATE TABLE grn (
	grn_id serial PRIMARY KEY,
    project_id INT NOT NULL,
    stock_id INT NOT NULL,
    vendor_id INT,
    quantity NUMERIC(10, 3) NOT NULL,
	received NUMERIC(10, 3) NOT NULL DEFAULT 0,
    has_invoice SMALLINT,
    metadata TEXT,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
-- quantity, received

CREATE TABLE received_grn (
	rgrn_id serial PRIMARY KEY,
	grn_id INT NOT NULL,
	stock_id INT,
    project_id INT NOT NULL,
    vehicle_no TEXT,
    vendor_id INT,
    location TEXT,
    received NUMERIC(10, 3) NOT NULL DEFAULT 0,
    received_at TIMESTAMP,
    has_invoice SMALLINT,
	amount NUMERIC(10, 2),
    images TEXT,
    files TEXT,
    metadata TEXT,
    verification TEXT,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE purchased_order (
	porder_id serial PRIMARY KEY,
    pgroup_id TEXT,
	project_id INT NOT NULL,
	stock_id INT NOT NULL,
	vendor_id INT NOT NULL,
	discount_percent NUMERIC(10, 2),
	discount_price NUMERIC(10, 2),
	order_date DATE,
	rate NUMERIC(10, 2),
	expiry_date DATE,
	quantity NUMERIC(10, 3),
	received NUMERIC(10, 3),
	max_quantity NUMERIC(10, 3),
	tax NUMERIC(5, 2),
	terms TEXT,
	remarks TEXT,
	metadata TEXT,
    verification TEXT NOT NULL,
    status TEXT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE received_order (
	rorder_id serial PRIMARY KEY,
    rgroup_id TEXT,
	project_id INT NOT NULL,
	stock_id INT NOT NULL,
	porder_id INT NOT NULL,
	vendor_id INT NOT NULL,
	quantity NUMERIC(10, 3) NOT NULL,
	received_by TEXT,
	vehicle_no TEXT,
	location TEXT,
	received_time TIMESTAMP,
    images TEXT,
    files TEXT,
    verification TEXT NOT NULL,
    status TEXT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
-- quantity
