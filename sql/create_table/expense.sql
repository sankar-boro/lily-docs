CREATE TABLE user_balance (
    balance_id serial PRIMARY KEY,
    org_id INT NOT NULL,
    project_id INT NOT NULL,
    user_id INT NOT NULL,
    balance NUMERIC(10, 2),
    sign TEXT NOT NULL,
    account_details TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_allowance (
    allowance_id serial PRIMARY KEY,
    request_id INT,
    user_id INT NOT NULL,
    org_id INT NOT NULL,
    project_id INT NOT NULL,
    allowance NUMERIC(10, 2),
    account_details TEXT,
    remark TEXT,
    images TEXT,
    files TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_allowance_requests (
    request_id serial PRIMARY KEY,
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    amount NUMERIC(10, 2),
    status SMALLINT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_expense (
    expense_id serial PRIMARY KEY,
    user_id INT NOT NULL,
    org_id INT NOT NULL,
    project_id INT NOT NULL,
    title TEXT,
    expense NUMERIC(10, 2),
    account_details TEXT,
    remark TEXT,
    images TEXT,
    files TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE vendor_balance (
    balance_id serial PRIMARY KEY,
    org_id INT NOT NULL,
    project_id INT NOT NULL,
    vendor_id INT NOT NULL,
    balance NUMERIC(10, 2),
    sign TEXT NOT NULL,
    account_details TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contractor_bills (
    bill_id serial PRIMARY KEY,
    contractor_rate_id INT,
    contractor_id INT NOT NULL,
    project_id INT NOT NULL,
    task_id INT NOT NULL,
    amount NUMERIC(10, 2),
    unit NUMERIC(10, 2),
    gst INT,
    discount INT,
    remarks TEXT,
    status INT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contractor_payments (
    payment_id serial PRIMARY KEY,
    project_id INT,
    bill_id INT NOT NULL,
    contractor_id INT NOT NULL,
    amount NUMERIC(10, 2),
    metadata TEXT,
    files TEXT,
    images TEXT,
    status INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendor_payments (
    payment_id serial PRIMARY KEY,
    project_id INT,
    bill_id INT NOT NULL,
    vendor_id INT NOT NULL,
    amount NUMERIC(10, 2),
    metadata TEXT,
    files TEXT,
    images TEXT,
    status INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);