#!/bin/bash

PWD=$(pwd)
alter=$PWD/sql/alter/index.sql

psql -h localhost -U sankar -d sankar -f $alter -W

