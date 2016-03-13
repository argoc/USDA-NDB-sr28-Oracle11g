LOAD DATA
 INFILE 'DATA_SRC.txt'
 INTO TABLE data_src
 FIELDS TERMINATED BY "^" OPTIONALLY ENCLOSED BY "~" TRAILING NULLCOLS		  
 (DataSrc_ID,Authors,Title,Year,Journal,Vol_City,Issue_State,Start_Page,End_Page)