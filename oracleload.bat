
@echo on
rem put this script where your .txt and .ctl files are.
rem .txt data files from USDA
rem .ctl files from this repo

rem need to ensure ORA_USER and ORA_PASSWORD are set so
rem you can login and create tables in the database.
rem and that the default database is appropriate.

echo data files available at 
echo https://www.ars.usda.gov/SP2UserFiles/Place/12354500/Data/SR/SR28/dnload/sr28asc.zip (6 MB)
echo description of database available at 
echo http://www.ars.usda.gov/SP2UserFiles/Place/80400525/Data/SR/SR28/sr28_doc.pdf (.5 MB)

echo %ORA_USER%
echo %ORA_PASSWORD%

echo create the tables
sqlplus %ORA_USER%/%ORA_PASSWORD% @sr28ddl_oracle.sql

echo load the data
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=SRC_CD.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=DERIV_CD.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=DATA_SRC.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=FOOTNOTE.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=LANGDESC.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=NUTR_DEF.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=FD_GROUP.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=FOOD_DES.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=NUT_DATA.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=WEIGHT.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=LANGUAL.ctl
sqlldr userid=%ORA_USER%/%ORA_PASSWORD% control=DATSRCLN.ctl

echo check for *.log and *.bad files to see if any data failed to upload

echo update statistics for all the tables
sqlplus %ORA_USER%/%ORA_PASSWORD% @sr28_analyze.sql

echo read sr28_doc.pdf for information on the database layout and contents