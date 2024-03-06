CREATE TABLE issues(
    issue_id serial PRIMARY KEY,
    issue_name TEXT, 
    description TEXT,
    priority VARCHAR(255),
    org_id INT NOT NULL, 
    project_id INT NOT NULL, 
    images TEXT,
    status TEXT,
    start_date TIMESTAMP,
    end_date TIMESTAMP, 
    assigned_to INT,
    assigned_by INT,
    metadata TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE issue_stats(
    issue_stat_id serial PRIMARY KEY,
    project_id INT NOT NULL,
    new INT,
    in_progress INT,
    completed INT,
    on_hold INT, 
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE issue_comments (
  issue_comment_id SERIAL PRIMARY KEY,
  issue_id INT,
  parent_id INT,
  user_id INT,
  comment TEXT,
  images TEXT,
  status VARCHAR(15),
  action VARCHAR(10),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
