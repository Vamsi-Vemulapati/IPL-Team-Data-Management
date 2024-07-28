-- creating a  Database 
create database IPL_TEAM_DATA;
-- use the created database 
use IPL_TEAM_DATA;
-- table for IPL Teams
create table IPL_TEAMS(sl_no int primary key,name varchar(23),short_cut_name varchar(23));

-- 			 #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*

-- MI BATTERS DATA TABLE 
create table MI_BATTING_PLAYERS_DATA(sl_no int primary key,
name varchar(50),
jersey_no int unique,
total_runs int,
100_s int,
50_s int,
Highest_Score int); 


 -- mi bowlers Table
 Create table MI_BOWLERS(sl_no int,
name varchar(50),
wickets int,
economy decimal(3,2),
best_figures varchar(10));
alter table MI_BOWLERS add column jersey_no int after name;


-- All rounders Data
create table MI_ALL_ROUNDERS(sl_no int primary key,
name varchar(50),
jersey_no int,
total_runs int,
100s int,
50s int,
wickets int,
economy int,
best_figures varchar(10));

-- 						#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*

-- CSK BATTERS TABLE
create table CSK_BATTING_PLAYERS_DATA(sl_no int primary key,
name varchar(50),
jersey_no int unique,
total_runs int,
100_s int,
50_s int,
Highest_Score int); 


-- CSK BOWLERS Table
Create table CSK_BOWLERS(sl_no int,
name varchar(50),
wickets int,
economy decimal(3,2),
best_figures varchar(10));
alter table CSK_BOWLERS add column jersey_no int after name;


-- CSK ALL ROUNDERS TABLE
create table CSK_ALL_ROUNDERS(sl_no int primary key,
name varchar(50),
jersey_no int,
total_runs int,
100s int,
50s int,
wickets int,
economy int,
best_figures varchar(10));

-- 						#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#* 

-- table creation for rcb players(batting) data
create table RCB_BATTING_PLAYERS_DATA(sl_no int primary key,
name varchar(50),
jersey_no int unique,
total_runs int,
100_s int,
50_s int,
Highest_Score int); 


-- Table of RCB BOWLERS 
Create table RCB_BOWLERS(sl_no int,
name varchar(50),
wickets int,
economy decimal(3,2),
best_figures varchar(10));
alter table RCB_BOWLERS add column jersey_no int after name;


-- Data of all_rounders for rcb
create table RCB_ALL_ROUNDERS(sl_no int primary key,
name varchar(50),
jersey_no int,
total_runs int,
100s int,
50s int,
wickets int,
economy int,
best_figures varchar(10)); 

-- 													                                                  **********END OF RCB DATA*************
