_____________________________________________________________________________________________________________________
DEFAULT FOLDER: README FILE 
Author: Bernardo Ribeiro                      
Last update: 01dec2018
_____________________________________________________________________________________________________________________

A) FOLDER STRUCTURE


0. ROOT

- Contains 2 files. Do-file '__SetDir.do' set folder globals and text file 'readme.txt'
describes the folder structure (the file you are reading now).


1. CODES

- Contains all do-files needed to clean the data and run the analysis. See instructions below on how 
to run them. Each do-file has a header with brief description of what it does, date of last update 
and what are the inputs and outputs.

- Contents:
	old:                     previous versions of the codes
	__default_MASTERFILE.do: master do-file
	_clean_temp_dir.do:      delete all the temporary files in the 'tmp' directory (see 2. DATA below)
	_name.do:                load program that cleans string variables

	
2. DATA

- Contains all data files used in the analysis. The folder called 'tmp' is used to store 
temporary files produced when cleaning data. The folder called 'original' contains raw data/input 
files.

- Contents:
	
	RAW DATA
	 'original/:

	
	CLEAN DATA
	 '.dta':

	 
3. DOCS

- Contains all relevant documents for analysis, such as reports, project logs etc.


4. PAPER

- Contains all relevant files used in all version of the paper and slides

- Contents:

	'old': previous versions of paper and slides, and old files

	SLIDES
	 'slides/:

5. RESULTS

- Contains both raw and clean output produced by analysis do-files.

	LOG FILES
	 Each analysis do-file produce a correspondent log file with the same name of the do-file. The names of 
	 the log files also have the date when they were created. Check the most recent log files in the folder 
	 'results/logs' to recover the Stata output for each do-file.

	RAW TABLES
	 'tables/old': previous versions of the tables
	 
	FIGURES
	 'figures/old/': previous versions of the figures




B) 	HOW TO CLEAN DATA AND RUN ANALYSIS

1. Make sure that (i) global 'default' in the master do-file '__default_MASTERFILE.do' points to the 
analysis root folder, (ii) '__SetDir.do' is in the root folder and (iii) original data files and all
do-files are all up to date and follow the structure described above.

2. Run master do-file '__default_MASTERFILE.do'

3. Check output logs, tables and figures in the 'results' folder.

_____________________________________________________________________________________________________________________
