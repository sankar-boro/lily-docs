CREATE TABLE contractors_attendance(
    attendance_id serial PRIMARY KEY,
    project_id INT,
    contractor_id INT,
    attendance_date TIMESTAMP,
    work_shift VARCHAR(10),
    verification TEXT,
    metadata TEXT,
    remarks TEXT,
    status VARCHAR(25),    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE labour_payments(
    uid serial PRIMARY KEY,
    project_id INT,
    contractor_id INT, 
    attendance_id INT NOT NULL, 
    amount NUMERIC(10,2),
    paid NUMERIC(10,2),
    metadata TEXT,
    status VARCHAR(25),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);