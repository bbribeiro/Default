/* _________________________________________________________________________________________________ */
/*                                                    SUMMARY                                        */
/*                                                                                                   */
/* DESCRIPTION: SETS ALL PATHS IN STATA DO-FILES                                                     */
/*                                                                                                   */
/* CALLED BY:   ALL DO-FILES INITIATING WITH "__" OR "_".                                            */
/*                                                                                                   */
/* INPUTS:      None                                                                                 */
/*                                                                                                   */
/* OUTPUT:      None                                                                                 */
/* _________________________________________________________________________________________________ */
  
  global data    "${default}/data"            // data sets go here
  global codes   "${default}/codes"           // .do files go here
  global results "${default}/results"         // Stata output
  global logs    "${default}/results/logs"    // Stata logs
  global tmp     "${default}/data/tmp"        // just a place to dump stuff when needed
