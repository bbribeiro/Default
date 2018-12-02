/* CLEAN TEMPORARY FOLDER */

local tempFiles: dir  "$tmp" files "*.dta"
foreach File of local tempFiles {
  erase "$tmp/`File'"
}

