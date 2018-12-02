/* -------------------------------------------------------------- */
/* DEFAULT MASTERFILE                                             */
/*                                                                */
/* Author: Bernardo Ribeiro                                       */
/* Last update: 01dec2018                                         */
/* -------------------------------------------------------------- */
set more off version 12

global default "C:\Users\Bernardo\Dropbox\WB\job\code\github\default"

cd "$default"
do __SetDir.do

/* Load programs ----------------------------------------------- */
run "$codes/_name.do"

/* Clean raw data  --------------------------------------------- */
do "$codes/data_default.do"    // output: $data/default.dta

/* Merge data -------------------------------------------------- */
//do "$codes/*.do"   // output: $data/*.dta

/* Main analysis ------------------------------------------------- */
do "$codes/analysis_default.do"        // output: $results/tables/default.xls

/* Clean temporary directory  ---------------------------------- */
do "$codes/_clean_temp_dir.do"
