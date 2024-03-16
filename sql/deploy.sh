#!/bin/bash

PWD=$(pwd)
dropfile=$PWD/sql/drop.sql

asset=$PWD/sql/create_table/asset.sql
balance=$PWD/sql/create_table/balance.sql
expense=$PWD/sql/create_table/expense.sql
issues=$PWD/sql/create_table/issues.sql
organization=$PWD/sql/create_table/organization.sql
project=$PWD/sql/create_table/project.sql
stock=$PWD/sql/create_table/stock.sql
_task=$PWD/sql/create_table/task.sql
user=$PWD/sql/create_table/user.sql
permission=$PWD/sql/create_table/permission.sql
vendorAndContractor=$PWD/sql/create_table/vendorAndContractor.sql
attendance=$PWD/sql/create_table/attendance.sql

psql -h localhost -U sankar -d sankar \
-f $asset \
-f $expense \
-f $organization \
-f $project \
-f $stock \
-f $issues \
-f $_task \
-f $user \
-f $permission \
-f $vendorAndContractor \
-f $attendance \
-W
