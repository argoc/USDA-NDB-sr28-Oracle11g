LOAD DATA
 INFILE 'DERIV_CD.txt'
 INTO TABLE deriv_cd
 FIELDS TERMINATED BY "^" OPTIONALLY ENCLOSED BY "~" TRAILING NULLCOLS		  
 (Deriv_Cd,Deriv_Desc)