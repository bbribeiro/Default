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
  replace `V' = subinstr(`V',"Á","A",.)
  replace `V' = subinstr(`V',"Ã","A",.)
  replace `V' = subinstr(`V',"Â","A",.)
  replace `V' = subinstr(`V',"À","A",.)
  
  replace `V' = subinstr(`V',"É","E",.)
  replace `V' = subinstr(`V',"Ê","E",.)
  replace `V' = subinstr(`V',"È","E",.)
  
  replace `V' = subinstr(`V',"Í","I",.)
  replace `V' = subinstr(`V',"Ì","I",.)
  
  replace `V' = subinstr(`V',"Ó","O",.)
  replace `V' = subinstr(`V',"Õ","O",.)
  replace `V' = subinstr(`V',"Ô","O",.)
  replace `V' = subinstr(`V',"Ò","O",.)
  
  replace `V' = subinstr(`V',"Ú","U",.)
  replace `V' = subinstr(`V',"Ù","U",.)
  replace `V' = subinstr(`V',"Ü","U",.)
  
  replace `V' = subinstr(`V',"Ç","C",.)

  replace `V' = subinstr(`V',"á","a",.)
  replace `V' = subinstr(`V',"ã","a",.)
  replace `V' = subinstr(`V',"â","a",.)
  replace `V' = subinstr(`V',"à","a",.)

  replace `V' = subinstr(`V',"é","e",.)
  replace `V' = subinstr(`V',"ê","e",.)
  replace `V' = subinstr(`V',"è","e",.)

  replace `V' = subinstr(`V',"í","i",.)
  replace `V' = subinstr(`V',"ì","i",.)

  replace `V' = subinstr(`V',"ó","o",.)
  replace `V' = subinstr(`V',"õ","o",.)
  replace `V' = subinstr(`V',"ô","o",.)
  replace `V' = subinstr(`V',"ò","o",.)

  replace `V' = subinstr(`V',"ú","u",.)
  replace `V' = subinstr(`V',"ù","u",.)
  replace `V' = subinstr(`V',"ü","u",.)

  replace `V' = subinstr(`V',"ç","c",.)  
  
  replace `V' = subinstr(`V',"´","'",.)  
  replace `V' = subinstr(`V',"`","'",.)  
  
  /* upper case */
  replace `V' = upper(`V')

  replace `V' = itrim(`V')
  replace `V' =  trim(`V')
  
}
  
end 
