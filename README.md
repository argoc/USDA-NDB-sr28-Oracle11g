# USDA Nutrient Database SR28 - Load Scripts for Oracle 11g

The USDA Nutrient Database is a great example of a sizable data set
that can be used to analyze queries and test database performance,
coming in at about 50 MB of raw data in the text files.

This GitHub repo captures the scripts needed to create the database
and load the data into Oracle 11g on Windows.

If you are looking for a port to MySQL, Django, JSON, R, or other databases,
they may already exist on GitHub - use github search.

If you are looking for the actual datafiles, see the links in Requirements.

##Requirements

* Windows 7 or newer, with admin privileges so you can install Oracle.
* Install [Oracle11g](
http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html?ssSourceSiteId=ocomen) 
(Express Edition works fine). You will have to create a free account on
the Oracle Tech Network to download the installer.
* Download the [SR-28 ASCII files](https://www.ars.usda.gov/SP2UserFiles/Place/12354500/Data/SR/SR28/dnload/sr28asc.zip)  (6 MB).
* You may also want the [SR-28 database description](http://www.ars.usda.gov/SP2UserFiles/Place/80400525/Data/SR/SR28/sr28_doc.pd). It contains additional details of the database contents and layout. 

##Installation

Once you have met the requirements:
* put the ascii text files in the same directory as the repo files.
* create a database using the Oracle tools (Application Express or SQL*Plus); note the user and password needed to connect to that database.
* open a command window on that directory, and in that window:
* set ORA_USER and ORA_PASSWORD to a user that can connect to your database:

    set ORA_USER=my_user_name
	set ORA_PASSWORD=my_user_password
	
* run oracleload.bat, capture the output since it is long:

    .\oracleload.bat 2>&1 > oracleload.log
	
* look through the contents of oracleload.log to make sure there were no errors creating the database or loading the data.
* look for *.bad files in the current directory; these contain lines from the .txt files that failed to load. If you find any, look at their companion *.log file for error messages.
* if there were no errors, you are set. Otherwise, analyze the cause of the error to resolve it.

##Use

The script creates the tables in the database. Once it is created, you can access it through Application Express or SQL*Plus as you like. Use the desription of the Nutrient Database to decide what sorts of queries you would like to make over the data.

## Issues

If you find a bug, add it to this repo's github issues. Please include the
information on how to reproduce the bug, and if you have a fix, it would
be great if you make a pull request to fix it.

Any feature requests or ideas can also go in the issues list.

## Contributing

1. Fork this repo
2. In your fork, create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request back to this repo

Contributions are much appreciated.

## Contributors

None, yet - fix something or enhance this repo, and get the fame of being listed here.

