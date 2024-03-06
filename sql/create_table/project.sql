CREATE TABLE projects(
    project_id serial,
    org_id INT NOT NULL,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    user_id INT NOT NULL,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    settings TEXT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_settings(
    psettings_id serial,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_projects (
    user_project_id serial,
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    role TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP 
);