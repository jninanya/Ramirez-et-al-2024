#'==============================================================================
#'                         saveCP: save Crop Parameters
#'==============================================================================
#'
#' This script aims to create a database of crop parameters of the SOLANUM 
#' model for different potato varieties.
#' 
#' The 8 crop parameters of the SOLANUM model are:
#' 
#' wmax : Maximum canopy cover index (fraction)
#' tm   : Thermal time at the maximum canopy cover growth rate (C-day)
#' te   : Thermal time at the maximum canopy cover value (C-day)
#' A    : Maximum harvest index (fraction)
#' tu   : Thermal time at maximum tuber partition rate (C-day)
#' b    : Thermal time just before the tuber initiation process (C-day)
#' RUE  : Average radiation use efficiency (g/MJ)
#' DMc  : Dry matter concentration of tubers (fraction)
#' 
#'==============================================================================


#-------------------------------------------------------------------------------
# Description of crop parameters
#-------------------------------------------------------------------------------
definition <- c("Maximum canopy cover index", 
                "Thermal time at the maximum canopy cover growth rate",
                "Thermal time at the maximum canopy cover value",
                "Maximum harvest index",
                "Thermal time at maximum tuber partition rate",
                "Thermal time just before the tuber initiation process",
                "Average radiation use efficiency",
                "Dry matter concentration of tubers")
symbol <- c("wmax", "tm", "te", "A", "tu", "b", "RUE", "DMc")
unit <- c("fraction", "C-day", "C-day", "fraction", "C-day", "C-day", "g/MJ", "fraction")

crop_parameters_description <- data.frame(definition, symbol, unit)


#-------------------------------------------------------------------------------
# List of crop parameters for different varieties
#-------------------------------------------------------------------------------
crop_parameters <- list(

#                   wmax     tm     te     A     tu      b   RUE   DMc
  "BARI_ALU_72" = c(0.90, 330.0, 870.0, 0.75, 650.0, 190.0, 3.22, 0.20),
  "BARI_ALU_78" = c(0.90, 330.0, 870.0, 0.75, 650.0, 190.0, 3.22, 0.20)
)


#-------------------------------------------------------------------------------
# Metadata of crop parameters for each variety
#-------------------------------------------------------------------------------
n = length(crop_parameters)

for(i in 1:n){
  names(crop_parameters[[i]]) = symbol
  attr(crop_parameters[[i]], "crop_parameters_description") = crop_parameters_description
}

save(crop_parameters, file = "crop_parameters.Rdata")







