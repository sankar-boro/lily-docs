#!/bin/bash

PWD=$(pwd)
alter=$PWD/sql/alter/index.sql

psql -h localhost -U cloudcivil -d cloudcivil -f $alter -W

