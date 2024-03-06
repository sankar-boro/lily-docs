#!/bin/bash

PWD=$(pwd)

index=$PWD/sql/index_all_table.sql

psql -h localhost -U ***** -d ***** \
-f $index \
-W
