OPTIONS ( DIRECT=TRUE)
LOAD DATA
INFILE '\BI_assignment_account.csv' 
BADFILE '\BI_assignment_account.bad'
DISCARDFILE '\BI_assignment_account.dsc'
DISCARDMAX 1000

INTO TABLE "ACCOUNTS"
APPEND
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(ACCT_ID,
PERS_ID,
ACCT_TYP)
