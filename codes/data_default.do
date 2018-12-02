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
log using "$logs/data_default_`today'", replace

/* Load data */
import excel using "$data/original/default.xlsx", clear firstrow

rename CountryName country_name
	qui clean_names country_name
rename CountryCode country
keep country country_name YR*
	drop if country==""
	
reshape long YR, i(country country_name) j(year)
	rename YR gdppc
	destring gdppc, force replace
	drop if year==2017
	
replace gdppc=gdppc/1000
format gdppc %9.2f

gen gdppc_2=(gdppc)^2
format gdppc_2 %9.2f

gen log_gdppc=log(gdppc)
format log_gdppc %9.2f

gen log_gdppc_2=(log_gdppc)^2
format log_gdppc_2 %9.2f
	
keep if year>=1996 & year<=2016

label var year         "Year"
label var country      "Country code"
label var country_name "Country name"
label var gdppc        "GDP per capita (2011 USD PPP 000s)"
label var gdppc_2      "Square GDP per capita (2011 USD PPP 000s)"
label var log_gdppc    "Log GDP per capita (2011 USD PPP 000s)"
label var log_gdppc_2  "Square log GDP per capita (2011 USD PPP 000s)"

qui compress
save "data/default.dta", replace

/* Save temporary files with country codes */
keep country country_name
duplicates drop

qui compress
save "$tmp/tmp.dta", replace

log close
