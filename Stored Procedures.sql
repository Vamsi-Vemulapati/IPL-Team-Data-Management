 --    #####creating a  procedure for data entry into table based on user wish#####
delimiter //
create procedure IPL_TEAMS_DATA(in t1 int,in t2 varchar(34),in t3 varchar(23))
begin
insert into IPL_TEAMS(sl_no,name,short_cut_name) values (t1,t2,t3);
end //
delimiter ;

 -- #####Creating  procedure for data retrival#####
delimiter //
create procedure show_ipl_teams()
begin
select * from IPL_TEAMS;
end //
delimiter ;
-- 										#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
--  												Queries for individual teams
-- 														BEGIN OF MI DATA
-- 										#*#*#*#*#*#*#*#**#*#*#**#*#*#*#*#*#*#*#*#**#*#*#*#*#*#*#*	
--  #####Creating a procedure for data entry into table based on user inputs#####
delimiter //
create procedure MI_BATTERS(in t21 int,in t22 varchar(50),in t23 int,in t24 int,in t25 int,in t26 int,in t27 int)
begin
	insert into MI_BATTING_PLAYERS_DATA(sl_no,name,jersey_no,total_runs,100_s,50_s,Highest_Score) values(t21,t22,t23,t24,t25,t26,t27);
end //
delimiter ; 

-- #####Creating a procedure for data entry into table based on user inputs#####
delimiter //
create procedure MI_BOWLERS_DATA(in t31 int,in t32 varchar(50),in t33 int,in t34 int,in t35 int,in t36 varchar(12))
begin
	insert into MI_BOWLERS(sl_no,name,jersey_no,wickets,economy,best_figures) values (t31,t32,t33,t34,t35,t36);
end //
delimiter ;

-- #####Creating  procedure for data retrival#####
delimiter //
create procedure SHOW_MI_BOWLERS()
begin
	select * from MI_BOWLERS;
end //
delimiter ;

-- #####Creating a procedure for data entry into table based on user inputs#####
delimiter //
create procedure MI_ALL_ROUNDER(in t41 int, in t42 varchar(50), in t43 int,in t44 int,in t45 int,in t46 int, in t47 int,in t48 int,in t49 varchar(22))
begin
	insert into MI_ALL_ROUNDERS(sl_no,name,jersey_no,total_runs,100s,50s,wickets,economy,best_figures) values (t41,t42,t43,t44,t45,t46,t47,t48,t49);
end //
delimiter ;

--  #####Creating  procedure for data retrival#####
delimiter //
create procedure SHOW_MI_ALL_ROUNDERS()
begin
	select * from MI_ALL_ROUNDERS;
end //
delimiter ; 


-- #####queire for particualr data retrivel#####
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_MI_BATTERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM MI_BATTING_PLAYERS_DATA order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM MI_BATTING_PLAYERS_DATA;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM MI_BATTING_PLAYERS_DATA;
    ELSEIF v = 'total_runs' THEN
        SELECT total_runs FROM MI_BATTING_PLAYERS_DATA;
    ELSEIF v = '100_s' THEN
        SELECT 100_s FROM MI_BATTING_PLAYERS_DATA;
    ELSEIF v = '50_s' THEN
        SELECT 50_s FROM MI_BATTING_PLAYERS_DATA;
    ELSEIF v = 'Highest_Score' THEN
        SELECT Highest_Score FROM MI_BATTING_PLAYERS_DATA;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ; 


-- ##### bowlers query #####
 DELIMITER //

CREATE PROCEDURE PARTICULAR_DATA_FROM_MI_BOWLERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM MI_BOWLERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM MI_BOWLERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM MI_BOWLERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM MI_BOWLERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM MI_BOWLERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM MI_BOWLERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;


-- ##### all-rounders query #####
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_ALL_MI_ROUNDERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM MI_ALL_ROUNDERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM MI_ALL_ROUNDERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM MI_ALL_ROUNDERS;
	elseif v = "toatal_runs" then 
		select total_runs from MI_ALL_ROUNDERS;
	elseif v = "100s" then
		select 100s from MI_ALL_ROUNDERS;
	elseif v = "50s" then
		select 50s from MI_ALL_ROUNDERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM MI_ALL_ROUNDERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM MI_ALL_ROUNDERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM MI_ALL_ROUNDERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;


--  ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN MI BATTER ###### 
delimiter //
create procedure ALL_DATA_OF_A_MI_BATTER(in v varchar(22))
begin
select * from MI_BATTING_PLAYERS_DATA where name=v;
end //
delimiter ;

--  ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN MI BOWLER ###### 
delimiter //
create procedure ALL_DATA_OF_A_MI_BOWLER(in v varchar(22))
begin
select * from MI_BOWLERS where name=v;
end //
delimiter ;

--  ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN MI ALL ROUNDER ###### 
delimiter //
create procedure ALL_DATA_OF_A_MI_ALL_ROUNDER(in v varchar(22))
begin
select * from MI_ALL_ROUNDERS where name=v;
end //
delimiter ;
-- 															END OF MI TEAM DATA											
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
--  															CSK TEAM DATA
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#* 
-- ##### Creating a procedure for data entry of batters in csk #####
delimiter //
create procedure CSK_BATTERS(in t21 int,in t22 varchar(50),in t23 int,in t24 int,in t25 int,in t26 int,in t27 int)
begin
	insert into CSK_BATTING_PLAYERS_DATA(sl_no,name,jersey_no,total_runs,100_s,50_s,Highest_Score) values(t21,t22,t23,t24,t25,t26,t27);
end //
delimiter ;

--  ###### Creating a procedure for Retrival of data in table ###### 
delimiter //
create procedure SHOW_CSK_BOWLERS()
begin
	select * from CSK_BOWLERS;
end //
delimiter ;

-- ###### Creating a procedure for data entry of bowlers in csk #######
delimiter //
create procedure CSK_BOWLERS_DATA(in t31 int,in t32 varchar(50),in t33 int,in t34 int,in t35 int,in t36 varchar(12))
begin
	insert into CSK_BOWLERS(sl_no,name,jersey_no,wickets,economy,best_figures) values (t31,t32,t33,t34,t35,t36);
end //
delimiter ;

-- ###### Creating a procedure for retrival of data in table ######
delimiter //
create procedure SHOW_BOWLERS()
begin
	select * from CSK_BOWLERS;
end //
delimiter ;

-- ###### Creatting a procedure for data entry of all_rounders in csk ######
delimiter //
create procedure CSK_ALL_ROUNDER(in t41 int, in t42 varchar(50), in t43 int,in t44 int,in t45 int,in t46 int, in t47 int,in t48 int,in t49 varchar(22))
begin
	insert into CSK_ALL_ROUNDERS(sl_no,name,jersey_no,total_runs,100s,50s,wickets,economy,best_figures) values (t41,t42,t43,t44,t45,t46,t47,t48,t49);
end //
delimiter ;

-- ###### Creating a Procedure for particualr data retrival based on user wish ######
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_CSK_BATTERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM CSK_BATTING_PLAYERS_DATA order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM CSK_BATTING_PLAYERS_DATA;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM CSK_BATTING_PLAYERS_DATA;
    ELSEIF v = 'total_runs' THEN
        SELECT total_runs FROM CSK_BATTING_PLAYERS_DATA;
    ELSEIF v = '100_s' THEN
        SELECT 100_s FROM CSK_BATTING_PLAYERS_DATA;
    ELSEIF v = '50_s' THEN
        SELECT 50_s FROM CSK_BATTING_PLAYERS_DATA;
    ELSEIF v = 'Highest_Score' THEN
        SELECT Highest_Score FROM CSK_BATTING_PLAYERS_DATA;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

-- ###### Creating a Procedure for particualr data retrival based on user wish ######
DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_CSK_BOWLERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM CSK_BOWLERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM CSK_BOWLERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM CSK_BOWLERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM CSK_BOWLERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM CSK_BOWLERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM CSK_BOWLERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

-- ###### Creating a Procedure for particualr data retrival based on user wish ######
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_ALL_CSK_ROUNDERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM CSK_ALL_ROUNDERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM CSK_ALL_ROUNDERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM CSK_ALL_ROUNDERS;
	elseif v = "toatal_runs" then 
		select total_runs from CSK_ALL_ROUNDERS;
	elseif v = "100s" then
		select 100s from CSK_ALL_ROUNDERS;
	elseif v = "50s" then
		select 50s from CSK_ALL_ROUNDERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM CSK_ALL_ROUNDERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM CSK_ALL_ROUNDERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM CSK_ALL_ROUNDERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

--  ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN MI BATTER ###### 
delimiter //
create procedure ALL_DATA_OF_A_CSK_BATTER(in v varchar(22))
begin
select * from CSK_BATTING_PLAYERS_DATA where name=v;
end //
delimiter ;

--  ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN MI BOWLER ###### 
delimiter //
create procedure ALL_DATA_OF_A_CSK_BOWLER(in v varchar(22))
begin
select * from CSK_BOWLERS where name=v;
end //
delimiter ;
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#* 
-- 		                                               ____ RCB PLAYERS DATA___ 
--  										#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#*#*#*
-- ##### Creating a procedure for data entry of batters in rcb based on user wish ######
delimiter //
create procedure RCB_BATTERS(in t21 int,in t22 varchar(50),in t23 int,in t24 int,in t25 int,in t26 int,in t27 int)
begin
	insert into RCB_BATTING_PLAYERS_DATA(sl_no,name,jersey_no,total_runs,100_s,50_s,Highest_Score) values(t21,t22,t23,t24,t25,t26,t27);
end //
delimiter ;

-- ##### Creating a procedure for data entry of bowlers in rcb based on user wish ######
delimiter //
create procedure RCB_BOWLERS_DATA(in t31 int,in t32 varchar(50),in t33 int,in t34 int,in t35 int,in t36 varchar(12))
begin
	insert into RCB_BOWLERS(sl_no,name,jersey_no,wickets,economy,best_figures) values (t31,t32,t33,t34,t35,t36);
end //
delimiter ;


-- ##### Creating a procedure for data entry of All Rounders in rcb based on user wish ######
delimiter //
create procedure ALL_ROUNDER(in t41 int, in t42 varchar(50), in t43 int,in t44 int,in t45 int,in t46 int, in t47 int,in t48 int,in t49 varchar(22))
begin
	insert into RCB_ALL_ROUNDERS(sl_no,name,jersey_no,total_runs,100s,50s,wickets,economy,best_figures) values (t41,t42,t43,t44,t45,t46,t47,t48,t49);
end //
delimiter ;

--  ###### Creating a Procedure for particular data retrival based on user wish ######
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_BATTERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM _BATTING_PLAYERS_DATA order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM RCB_BATTING_PLAYERS_DATA;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM RCB_BATTING_PLAYERS_DATA;
    ELSEIF v = 'total_runs' THEN
        SELECT total_runs FROM RCB_BATTING_PLAYERS_DATA;
    ELSEIF v = '100_s' THEN
        SELECT 100_s FROM RCB_BATTING_PLAYERS_DATA;
    ELSEIF v = '50_s' THEN
        SELECT 50_s FROM RCB_BATTING_PLAYERS_DATA;
    ELSEIF v = 'Highest_Score' THEN
        SELECT Highest_Score FROM RCB_BATTING_PLAYERS_DATA;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

--  ###### Creating a Procedure for particular data retrival based on user wish ######
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_BOWLERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM RCB_BOWLERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM RCB_BOWLERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM RCB_BOWLERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM RCB_BOWLERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM RCB_BOWLERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM RCB_BOWLERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

-- ###### Creating a Procedure for particular data retrival based on user wish ######
 DELIMITER //
CREATE PROCEDURE PARTICULAR_DATA_FROM_ALL_ROUNDERS(IN v VARCHAR(10))
BEGIN
    IF v = 'sl_no' THEN
        SELECT sl_no FROM RCB_ALL_ROUNDERS order by sl_no asc;
    ELSEIF v = 'name' THEN
        SELECT name FROM RCB_ALL_ROUNDERS;
    ELSEIF v = 'jersey_no' THEN
        SELECT jersey_no FROM RCB_ALL_ROUNDERS;
	elseif v = "toatal_runs" then 
		select total_runs from RCB_ALL_ROUNDERS;
	elseif v = "100s" then
		select 100s from RCB_ALL_ROUNDERS;
	elseif v = "50s" then
		select 50s from RCB_ALL_ROUNDERS;
    ELSEIF v = 'wickets' THEN
        SELECT wickets FROM RCB_ALL_ROUNDERS;
    ELSEIF v = 'economy' THEN
        SELECT economy FROM RCB_ALL_ROUNDERS;
    ELSEIF v = 'best_figures' THEN
        SELECT best_figures FROM RCB_ALL_ROUNDERS;
    ELSE
        SELECT 'Invalid column name' AS Error;
    END IF;
END //
DELIMITER ;

-- ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN RCB BATTER ######  
delimiter //
create procedure ALL_DATA_OF_A_BATTER(in v varchar(22))
begin
select * from RCB_BATTING_PLAYERS_DATA where name=v;
end //
delimiter ;

-- ##### CREATING A PROCEDURE FOR RETREVING ALL INFO OF AN RCB BOWLER ######  
delimiter //
create procedure ALL_DATA_OF_A_BOWLER(in v varchar(22))
begin
select * from RCB_BOWLERS where name=v;
end //
delimiter ;

 -- ######  Creating a procedure for showing  AVG_DATA_OF_A_BATTER ###### 
 delimiter //
create procedure AVG_DATA_OF_A_BATTERS()
begin
select avg(total_runs) from  RCB_BATTING_PLAYERS_DATA;
end //
delimiter ;
-- 												______________END OF RCB DATA________________



