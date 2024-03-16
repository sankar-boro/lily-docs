#!/bin/bash

PWD=$(pwd)
dropfile=$PWD/sql/drop.sql

psql -h localhost -U sankar -d sankar -f $dropfile -W

