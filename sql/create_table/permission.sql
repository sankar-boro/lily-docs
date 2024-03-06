CREATE table keyvalue(
    kv_id serial NOT NULL,
    name TEXT,
    key TEXT NOT NULL,
    value INT NOT NULL DEFAULT 0,
    type INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE table table_permissions(
    permission_id serial NOT NULL,
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    table_id INT NOT NULL,
    permission TEXT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO keyvalue(key, name, value, type) VALUES('permission', 'Permission', 0, 0);
INSERT INTO keyvalue(key, name, value, type) VALUES('role', 'Role', 0, 0);
INSERT INTO keyvalue(key, name, value, type) VALUES('table', 'Table', 0, 0);

INSERT INTO keyvalue(key, name, value, type) VALUES('read', 'Read', 1, 1);
INSERT INTO keyvalue(key, name, value, type) VALUES('write', 'Write', 3, 1);
INSERT INTO keyvalue(key, name, value, type) VALUES('update', 'Update', 5, 1);
INSERT INTO keyvalue(key, name, value, type) VALUES('delete', 'Delete', 7, 1);
INSERT INTO keyvalue(key, name, value, type) VALUES('verify', 'Verify', 13, 1);
INSERT INTO keyvalue(key, name, value, type) VALUES('disabled', 'Disabled', 17, 1);

INSERT INTO keyvalue(key, name, value, type) VALUES('admin', 'Admin', 101, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('accountant', 'Accountant', 102, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('contractor', 'Contractor', 103, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('operations', 'Operations', 104, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('project_head', 'Project Head', 105, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('store_manager', 'Store Manager', 106, 2);
INSERT INTO keyvalue(key, name, value, type) VALUES('site_engineer', 'Site Engineer', 107, 2); 
INSERT INTO keyvalue(key, name, value, type) VALUES('site_supervisor', 'Site Supervisor', 108, 2);
INSERT INTO keyvalue(key, name, value, type) VALUES('safety_engineer', 'Safety Engineer', 109, 2);

-- assets
INSERT INTO keyvalue(name, key, value, type) VALUES('Assets', 'assets', 1001, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Project Assets', 'project_assets', 1002, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Organization Assets', 'org_assets', 1003, 3); 
-- expense
INSERT INTO keyvalue(name, key, value, type) VALUES('User Balance', 'user_balance', 1004, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('User Allowance', 'user_allowance', 1005, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('User Expense', 'user_expense', 1006, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Vendor Balance', 'vendor_balance', 1007, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Vendor Payments', 'vendor_payments', 1008, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Vendor Bills', 'vendor_bills', 1009, 3);
-- organization
INSERT INTO keyvalue(name, key, value, type) VALUES('Organizations', 'organizations', 1010, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('User Organizations', 'user_orgs', 1011, 3);
-- project
INSERT INTO keyvalue(name, key, value, type) VALUES('Projects', 'projects', 1012, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('User Projects', 'user_projects', 1013, 3);
-- stocks
INSERT INTO keyvalue(name, key, value, type) VALUES('Stocks', 'stocks', 1014, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Grn', 'grn', 1015, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Purchased Orders', 'purchased_order', 1016, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Received Orders', 'received_order', 1017, 3);
-- tasks
INSERT INTO keyvalue(name, key, value, type) VALUES('Task Categories', 'task_categories', 1018, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Tasks', 'tasks', 1019, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Task stocks', 'task_stocks', 1020, 3);
-- user
INSERT INTO keyvalue(name, key, value, type) VALUES('Users', 'users', 1021, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('User roles', 'user_roles', 1022, 3); 
-- vendor
INSERT INTO keyvalue(name, key, value, type) VALUES('Vendors', 'vendors', 1023, 3); 
INSERT INTO keyvalue(name, key, value, type) VALUES('Organization Vendors', 'org_vendors', 1024, 3); 
-- issues
INSERT INTO keyvalue(name, key, value, type) VALUES('Issues', 'issues', 1025, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Reports', 'reports', 1026, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Request Stocks', 'stock_requests', 1027, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Labour Attendance', 'labour_attendance', 1028, 3);
INSERT INTO keyvalue(name, key, value, type) VALUES('Labour Payments', 'labour_payments', 1029, 3); 


