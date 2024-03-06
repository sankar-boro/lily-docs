CREATE TABLE task_categories (
	group_id serial PRIMARY KEY,
    parent_id INT,
    project_id INT,
    name TEXT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE tasks (
	task_id serial PRIMARY KEY,
    project_id INT NOT NULL,
    parent_id INT,
	name TEXT NOT NULL,
    -- budget NUMERIC(10, 2) NOT NULL,
    status TEXT,
    target NUMERIC(10, 3),
    user_id INT,
    unit TEXT,
    completed NUMERIC(10, 3) DEFAULT 0,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE task_stocks (
	tstock_id serial PRIMARY KEY,
    stock_id INT NOT NULL,
    project_id INT NOT NULL,
    task_id INT,
    group_id INT,
    user_id INT NOT NULL,
    quantity NUMERIC(10, 3) NOT NULL,
    status INT NOT NULL, 
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE task_completed (
	task_done_id serial PRIMARY KEY,
    project_id INT NOT NULL,
    task_id INT NOT NULL,
	user_id INT NOT NULL,
    contractor_id INT,
    metadata TEXT,
    amount NUMERIC(10, 3) DEFAULT 0.00,
    completed NUMERIC(10, 3),
    images TEXT,
    files TEXT,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
