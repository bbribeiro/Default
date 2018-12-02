# Default folder structure for data analysis

Author: Bernardo Ribeiro 

Last update: December 1st, 2018

## **Folder structure**

### Root

Contains 2 files. Do-file '\__SetDir.do' sets folder globals and text file 'readme.txt'
describes the folder structure (the file you are reading now).

### Codes

Contains all do-files needed to clean the data and run the analysis. See instructions below on how 
to run them. Each do-file has a header with brief description of what it does, date of last update 
and what are the inputs and outputs.

Contents:

\- 'old':                     folder with previous versions of the codes

\- '\__default_MASTERFILE.do': master do-file
	
\- '_clean_temp_dir.do':      delete all the temporary files in the 'tmp' directory (see 2. DATA below)
	
\- '_name.do':                load program that cleans string variables

\- 'data_default.do':         cleans default data

\- 'analysis_default.do':     run default analysis

	
### Data

Contains all data files used in the analysis. The folder called 'tmp' is used to store 
temporary files produced when cleaning data. The folder called 'original' contains raw data/input 
files.

Contents:
	
*Raw data*
	
\- 'original/default.xlsx': raw default data

*Clean data*

\- 'default.dta': clean default data

	 
### Docs

Contains all relevant documents for analysis, such as reports, project logs etc.


### Paper

Contains all relevant files used in all version of the paper and slides

Contents:

\- 'old': folder with previous versions of paper and slides, and old files

\- 'default_paper.docx': latest version of default paper

*Slides*
	
\- 'slides/default_slides.pptx':

### Results

Contains both raw and clean output produced by analysis do-files.

*Log files*
	
 Each analysis do-file produce a correspondent log file with the same name of the do-file. The names of 
 the log files also have the date when they were created. Check the most recent log files in the folder 
 'results/logs' to recover the Stata output for each do-file.

*Raw tables*

\- 'tables/old': folder with previous versions of the tables

\- 'tables/default.xls': default output table

*Figures*

\- 'figures/old': folder with previous versions of the figures

\- 'figures/default.png': default output fugure


## **How to clean the data and run the analysis**

1. Make sure that (i) global 'default' in the master do-file '\__default_MASTERFILE.do' points to the 
analysis root folder, (ii) '\__SetDir.do' is in the root folder and (iii) original data files and all
do-files are all up to date and follow the structure described above.

2. Run master do-file '\__default_MASTERFILE.do'

3. Check output logs, tables and figures in the 'results' folder.
