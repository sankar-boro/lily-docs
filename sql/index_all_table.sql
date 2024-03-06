-- orgs
DROP INDEX IF EXISTS user_orgs_idx;
CREATE INDEX IF NOT EXISTS user_orgs_idx ON user_orgs(org_id);
CLUSTER user_orgs USING user_orgs_idx;
-- orgs

-- users
DROP INDEX IF EXISTS users_phone;
CREATE UNIQUE INDEX users_phone ON users(phone);
-- users

-- assets
DROP INDEX IF EXISTS project_assets_idx;
CREATE INDEX IF NOT EXISTS project_assets_idx ON project_assets(project_id);
-- assets

-- tasks
DROP INDEX IF EXISTS task_categories_idx;
CREATE INDEX IF NOT EXISTS task_categories_idx ON task_categories(project_id);
-- 
DROP INDEX IF EXISTS tasks_idx;
CREATE INDEX IF NOT EXISTS tasks_idx ON tasks(project_id);
-- 
DROP INDEX IF EXISTS task_stocks_idx;
CREATE INDEX IF NOT EXISTS task_stocks_idx ON task_stocks(project_id);
-- 
DROP INDEX IF EXISTS task_completed_idx;
CREATE INDEX IF NOT EXISTS task_completed_idx ON task_completed(project_id);
-- tasks

-- stocks
DROP INDEX IF EXISTS stock_groups_idx;
CREATE INDEX IF NOT EXISTS stock_groups_idx ON stock_groups(project_id);
-- 
DROP INDEX IF EXISTS stocks_idx;
CREATE INDEX IF NOT EXISTS stocks_idx ON stocks(project_id);
-- 
DROP INDEX IF EXISTS stock_requests_idx;
CREATE INDEX IF NOT EXISTS stock_requests_idx on stock_requests(project_id);
-- 
DROP INDEX IF EXISTS grn_idx;
CREATE INDEX IF NOT EXISTS grn_idx ON grn(grn_id);
-- 
DROP INDEX IF EXISTS received_grn_idx;
CREATE INDEX IF NOT EXISTS received_grn_idx ON received_grn(project_id);
-- 
DROP INDEX IF EXISTS purchased_order_idx;
CREATE INDEX IF NOT EXISTS purchased_order_idx ON purchased_order(project_id);
-- 
DROP INDEX IF EXISTS received_order_idx;
CREATE INDEX IF NOT EXISTS received_order_idx ON received_order(project_id);
-- stocks

-- permissions
DROP INDEX IF EXISTS table_permissions_idx;
CREATE INDEX IF NOT EXISTS table_permissions_idx ON table_permissions(project_id, user_id);
-- permissions

-- others
-- CLUSTER stocks USING stocks_idx;
CLUSTER stocks;
DROP INDEX IF EXISTS stocks_project_id;
-- others