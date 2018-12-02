/* -------------------------------------------------------------- */
/* PROGRAM THAT CLEANS VARIABLE CONTENT, ELIMINATING PROBLEMATIC  */
/* CHARACTERS                                                     */
/* INPUT: STRING VARIABLE                                         */
/* OUTPUT: SAME VARIABLE WITHOUT PROBLEMATIC CHARACTERS           */
/* Author: Bernardo Ribeiro                                       */
/* Last update: 09nov2017                                         */
/* Obs: based on Dimitri's Szerman original program "limpa_nomes" */
/* -------------------------------------------------------------- */

cap program drop clean_names
program define clean_names
  syntax varlist
  
foreach V of varlist `varlist' {
  
  /* tira acentos */
  replace `V' = subinstr(`V',"�","A",.)
  replace `V' = subinstr(`V',"�","A",.)
  replace `V' = subinstr(`V',"�","A",.)
  replace `V' = subinstr(`V',"�","A",.)
  
  replace `V' = subinstr(`V',"�","E",.)
  replace `V' = subinstr(`V',"�","E",.)
  replace `V' = subinstr(`V',"�","E",.)
  
  replace `V' = subinstr(`V',"�","I",.)
  replace `V' = subinstr(`V',"�","I",.)
  
  replace `V' = subinstr(`V',"�","O",.)
  replace `V' = subinstr(`V',"�","O",.)
  replace `V' = subinstr(`V',"�","O",.)
  replace `V' = subinstr(`V',"�","O",.)
  
  replace `V' = subinstr(`V',"�","U",.)
  replace `V' = subinstr(`V',"�","U",.)
  replace `V' = subinstr(`V',"�","U",.)
  
  replace `V' = subinstr(`V',"�","C",.)

  replace `V' = subinstr(`V',"�","a",.)
  replace `V' = subinstr(`V',"�","a",.)
  replace `V' = subinstr(`V',"�","a",.)
  replace `V' = subinstr(`V',"�","a",.)

  replace `V' = subinstr(`V',"�","e",.)
  replace `V' = subinstr(`V',"�","e",.)
  replace `V' = subinstr(`V',"�","e",.)

  replace `V' = subinstr(`V',"�","i",.)
  replace `V' = subinstr(`V',"�","i",.)

  replace `V' = subinstr(`V',"�","o",.)
  replace `V' = subinstr(`V',"�","o",.)
  replace `V' = subinstr(`V',"�","o",.)
  replace `V' = subinstr(`V',"�","o",.)

  replace `V' = subinstr(`V',"�","u",.)
  replace `V' = subinstr(`V',"�","u",.)
  replace `V' = subinstr(`V',"�","u",.)

  replace `V' = subinstr(`V',"�","c",.)  
  
  replace `V' = subinstr(`V',"�","'",.)  
  replace `V' = subinstr(`V',"`","'",.)  
  
  /* upper case */
  replace `V' = upper(`V')

  replace `V' = itrim(`V')
  replace `V' =  trim(`V')
  
}
  
end 
