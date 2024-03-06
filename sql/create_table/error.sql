CREATE TABLE error_logs (
	error_id serial PRIMARY KEY,
	error_from VARCHAR(15) NOT NULL,
    error_title TEXT,
    error_stack TEXT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);