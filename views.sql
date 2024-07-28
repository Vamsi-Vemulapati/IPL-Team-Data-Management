
-- merging of all tables into a single table 
CREATE VIEW MI_PLAYERS AS
SELECT 
    b.sl_no AS sl_no,
    b.name AS batter_name,
    b.jersey_no AS batter_jersey_no,
    b.total_runs AS batter_total_runs,
    b.100_s AS batter_100s,
    b.50_s AS batter_50s,
    b.Highest_Score AS batter_highest_score,
    bow.name AS bowler_name,
    bow.jersey_no AS bowler_jersey_no,
    bow.wickets AS bowler_wickets,
    bow.economy AS bowler_economy,
    bow.best_figures AS bowler_best_figures,
    ar.name AS allrounder_name,
    ar.jersey_no AS allrounder_jersey_no,
    ar.total_runs AS allrounder_total_runs,
    ar.100s AS allrounder_100s,
    ar.50s AS allrounder_50s,
    ar.wickets AS allrounder_wickets,
    ar.economy AS allrounder_economy,
    ar.best_figures AS allrounder_best_figures
FROM 
    MI_BATTING_PLAYERS_DATA b
LEFT JOIN 
    MI_BOWLERS bow ON b.sl_no = bow.sl_no
LEFT JOIN 
    MI_ALL_ROUNDERS ar ON b.sl_no = ar.sl_no;

-- Select from the view
SELECT * FROM MI_PLAYERS;
select batter_name from MI_PLAYERS;
-- 															END OF MI TEAM DATA											
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
--  															CSK TEAM DATA
-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#* 
-- ********* creating a view which will represent all the above tables into a single table *********
 CREATE VIEW CSK_PLAYERS AS
SELECT 
    b.sl_no AS sl_no,
    b.name AS batter_name,
    b.jersey_no AS batter_jersey_no,
    b.total_runs AS batter_total_runs,
    b.100_s AS batter_100s,
    b.50_s AS batter_50s,
    b.Highest_Score AS batter_highest_score,
    bow.name AS bowler_name,
    bow.jersey_no AS bowler_jersey_no,
    bow.wickets AS bowler_wickets,
    bow.economy AS bowler_economy,
    bow.best_figures AS bowler_best_figures,
    ar.name AS allrounder_name,
    ar.jersey_no AS allrounder_jersey_no,
    ar.total_runs AS allrounder_total_runs,
    ar.100s AS allrounder_100s,
    ar.50s AS allrounder_50s,
    ar.wickets AS allrounder_wickets,
    ar.economy AS allrounder_economy,
    ar.best_figures AS allrounder_best_figures
FROM 
    CSK_BATTING_PLAYERS_DATA b
LEFT JOIN 
    CSK_BOWLERS bow ON b.sl_no = bow.sl_no
LEFT JOIN 
    CSK_ALL_ROUNDERS ar ON b.sl_no = ar.sl_no;
-- Retrevial from view 
SELECT * FROM CSK_PLAYERS;
select batter_name from CSK_PLAYERS;

-- 											#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#* 
-- 		                                               ____ RCB PLAYERS DATA___ 
--  										#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#**#*#*#*#*#*#*
-- ********* creating a view which will represent all the above tables into a single table *********
 CREATE VIEW RCB_PLAYERS AS
SELECT 
    b.sl_no AS sl_no,
    b.name AS batter_name,
    b.jersey_no AS batter_jersey_no,
    b.total_runs AS batter_total_runs,
    b.100_s AS batter_100s,
    b.50_s AS batter_50s,
    b.Highest_Score AS batter_highest_score,
    bow.name AS bowler_name,
    bow.jersey_no AS bowler_jersey_no,
    bow.wickets AS bowler_wickets,
    bow.economy AS bowler_economy,
    bow.best_figures AS bowler_best_figures,
    ar.name AS allrounder_name,
    ar.jersey_no AS allrounder_jersey_no,
    ar.total_runs AS allrounder_total_runs,
    ar.100s AS allrounder_100s,
    ar.50s AS allrounder_50s,
    ar.wickets AS allrounder_wickets,
    ar.economy AS allrounder_economy,
    ar.best_figures AS allrounder_best_figures
FROM 
    RCB_BATTING_PLAYERS_DATA b
LEFT JOIN 
    RCB_BOWLERS bow ON b.sl_no = bow.sl_no
LEFT JOIN 
    RCB_ALL_ROUNDERS ar ON b.sl_no = ar.sl_no;
-- Retrevial from view 
SELECT * FROM RCB_PLAYERS;
select batter_name from RCB_PLAYERS;
-- 												______________END OF RCB DATA_________________ 