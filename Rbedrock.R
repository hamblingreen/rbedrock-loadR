#"Rbedrock.r" by hamblingreen. A script relying on tidyverse and rbedrock whose function is to load and update these two packages and output a confirmation/error accordingly

if("rbedrock" %in% (.packages())){
  print("Rbedrock is already loaded, lol!")
}else{
  #Installing and/or loads devtools, rbedrock, and tidyverse
    if (!require(pacman)) {install.packages("pacman")}
    p_load(devtools)
    devtools::install_github("reedacartwright/rbedrock")
    p_load(tidyverse, rbedrock)
    cat("\014")
  #Printing whether rbedrock has been loaded or not
    if("rbedrock" %in% (.packages())){
      print("rbedrock has been loaded")
    }else{
      print("There was an error loading rbedrock")
    }
}