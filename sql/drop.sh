#!/bin/bash

PWD=$(pwd)
dropfile=$PWD/sql/drop.sql

psql -h localhost -U cloudcivil -d cloudcivil -f $dropfile -W

