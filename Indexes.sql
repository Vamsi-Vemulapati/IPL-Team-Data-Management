-- ****** RETREVING ALL INFO OF AN MI BATTER ******
create index MI_BATTER on MI_BATTING_PLAYERS_DATA(name);

-- ****** RETREVING ALL INFO OF AN MI BOWLER *******
create index MI_BOWLER on MI_BOWLERS(name);

-- ****** RETREVING ALL INFO OF AN MI ALL ROUNDER *******
call ALL_DATA_OF_A_MI_ALL_ROUNDER('tim david'); 
									
-- 							#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
 
-- ******* Retreving all info of a CSK Batter ********
create index CSK_BATTER on CSK_BATTING_PLAYERS_DATA(name);

-- ****** Retreving all info a CSK Bowler ******
create index CSK_BOWLER on CSK_BOWLERS(name);

-- ****** RETREVING ALL INFO OF AN CSK ALL ROUNDER *******
call ALL_DATA_OF_A_CSK_ALL_ROUNDER('Mooen ali'); 

-- 						       #*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#* 

-- ****** RETREVING ALL INFO OF AN RCB BATTER ******
create index RCB_BATTER on RCB_BATTING_PLAYERS_DATA(name);

-- ****** RETREVING ALL INFO OF AN RCB BOWLER *******
create index RCB_BOWLER on RCB_BOWLERS(name);

-- ****** RETREVING ALL INFO OF AN RCB ALL ROUNDER *******
call ALL_DATA_OF_A_RCB_ALL_ROUNDER('Glen Maxwell');
