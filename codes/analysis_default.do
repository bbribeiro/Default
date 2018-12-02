/* -------------------------------------------------------------- */
/* DEFAULT: CLEANS DATA                                           */
/*                                                                */
/* Author: Bernardo Ribeiro                                       */
/* Last update: 01dec2018                                         */
/* -------------------------------------------------------------- */
set more off 
version 12

/* Log */
local today = c(current_date)
local today = subinstr("`today'", " ", "", .)
cap log close
log using "$logs/analysis_default_`today'", replace

/* Load data */
use "$data/default.dta", clear

egen cty=group(country)
tsset cty year

reg log_gdppc L.log_gdppc
outreg2 using "$results/tables/default.xls", excel replace

twoway scatter log_gdppc L.log_gdppc
graph export "$results/figures/default.png", replace width(500)


log close
