-- 	#####data entry as per user wish##### 
CALL  IPL_TEAMS_DATA(1,"Chennai_Super_Kings","CSK");

-- showing all IPL Teams
call  show_ipl_teams();
-- 		#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
--  		  Queries for individual teams
-- 								 BEGIN OF MI DATA
-- 		#*#*#*#*#*#*#*#**#*#*#**#*#*#*#*#*#*#*#*#**#*#*#*#*#*#*#*	
-- inserting batters data based on user input
CALL MI_BATTERS();
-- Shows all mi batters data 
call SHOW_MI_BATTERS;

-- inserting data into table  
call MI_BOWLERS_DATA();
-- Shows data of bowlers 
call SHOW_MI_BOWLERS;


-- inserting data of mi all rounders based on user input 
call MI_ALL_ROUNDERS();
--  shows mi all rounders 
call SHOW_MI_ALL_ROUNDERS;

 -- *******showing particular column from batters*******
call PARTICULAR_DATA_FROM_MI_BATTERS('name');

--  ******* showing particular column from bowlers ********
call PARTICULAR_DATA_FROM_MI_BOWLERS('name');

--  ******* showing particular column from all_rounders *******
call PARTICULAR_DATA_FROM_ALL_MI_ROUNDERS('name');

-- ****** RETREVING ALL INFO OF AN MI BATTER ******
call ALL_DATA_OF_A_MI_BATTER('Rohit sharma');

-- ****** RETREVING ALL INFO OF AN MI BOWLER *******
call ALL_DATA_OF_A_MI_BOWLER('jasprit Bumrah');

-- ****** RETREVING ALL INFO OF AN MI ALL ROUNDER *******
call ALL_DATA_OF_A_MI_ALL_ROUNDER('tim david'); 
-- 															END OF MI TEAM DATA											
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
--  															CSK TEAM DATA
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#* 
-- ******* inserting data based on user input *******
call CSK_BATTERS(); 
-- ******** retreving all info of CSK batters ******* 
CALL SHOW_CSK_BATTERS;

-- ******* inserting data based on user input *******
call CSK_BOWLERS_DATA();
-- ******* retreving all info of bowlers *******
call SHOW_CSK_BOWLERS;

-- ******* inserting data based on user input ********
call CSK_ALL_ROUNDER(); 
-- ******* rettreving all info of all rounders ********
call SHOW_CSK_ALL_ROUNDERS; 

-- *******  retreving particular column batters info ********
call PARTICULAR_DATA_FROM_CSK_BATTERS('name'); 

-- ******* retreving particular column bowlers info *******
call PARTICULAR_DATA_FROM_CSK_BOWLERS('name');

--  ******** retreving particular column All Rounders info ********
call PARTICULAR_DATA_FROM_ALL_CSK_ROUNDERS('name');

-- ******* Retreving all info of a CSK Batter ********
call ALL_DATA_OF_A_CSK_BATTER('Ms dhoni');

-- ****** Retreving all info a CSK Bowler ******
 call ALL_DATA_OF_A_CSK_BOWLER('Ravindra Jadeja');
 -- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#* 
-- 		                                               ____ RCB PLAYERS DATA___ 
--  										#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#*#*#*
-- ******  inserting values as per user wish  ********
call  RCB_BATTERS();
-- showing all data batters in rcb squad
call SHOW_BATTERS();

-- ******  inserting data as per user wish  ********
call  RCB_BOWLERS_DATA();
-- ******  showing bowlers in rcb  ********
call SHOW_BOWLERS;

-- ******  inserting data as per user wish  *******
call  ALL_ROUNDER();
-- showing all rounders
call SHOW_ALL_ROUNDERS();

-- *******  showing only desired column of RCB_batters  ********
call  PARTICULAR_DATA_FROM_BATTERS("name");

-- *******  showing only desired column from rcb_bowlers  ********
call  PARTICULAR_DATA_FROM_BOWLERS("name");

-- ******  showing only desired column  from rcb_all_rounders  ********
call  PARTICULAR_DATA_FROM_ALL_ROUNDERS("name");

-- *****  shows all data of a RCB Batter  ******* 
call ALL_DATA_OF_A_BATTER('virat kohli');

--  ********  shows all data of rcb bowler  **********
call ALL_DATA_OF_A_BOWLER('Dale Steyn');

-- *******  Shows avg of RCB Batters  *********
call AVG_DATA_OF_A_BATTERS; 
-- 														 ______________END OF RCB DATA_________________ 
