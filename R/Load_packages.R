# Environment Set up
rm(list = ls()) #Clean workspace
cat("\014")     #Clean Console
gc() # Free memory

###################
# Install packages
###################

pkgs <- c("remedy", "dplyr", "Seurat", "rstudioapi",
          "cowplot", "gplots", "ggplot2", "grid", "gridExtra",
          "styler", "stringr", "inlmisc", "RColorBrewer",
          "readxl", "devtools", "tidyverse", "hdf5r", "scales",
          "useful", "renv")

for(i in 1:length(pkgs)){
  if(!require(pkgs[i], character.only = T)){
    install.packages(pkgs[i])
    require(pkgs[i], character.only = T)
  }else{
    require(pkgs[i], character.only = T)
  }
}

pkgs <- c("SingleCellExperiment",  "DT", "readr","tibble")


for(i in 1:length(pkgs)){
  if(!require(pkgs[i], character.only = T)){
    BiocManager::install(pkgs[i])
    require(pkgs[i], character.only = T)
  }else{
    require(pkgs[i], character.only = T)
  }
}



#####################
# Github packages
#####################

# library("devtools")

# usethis::browse_github_pat()
# usethis::edit_r_environ()
# GITHUB_PAT = "d8207153aef7b295cdf66eb1e1b2a2ed38b0ca18"
# R_MAX_VSIZE = 30Gb


# Nebulosa for density plotting
devtools::install_github("powellgenomicslab/Nebulosa")
library("Nebulosa")

######################
# Seurat
######################

#devtools::install_github('satijalab/seurat-data')
devtools::install_github('satijalab/seurat-wrappers')
library("SeuratWrappers")


#####################
# Reproducibility
#####################

# Only run once to initialise 
#renv::init()

# Run snapshot to update renv.lock file 
#renv::snapshot()

# use to restore environment 
#renv::restore()






