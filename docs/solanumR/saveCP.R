################################################################################
# saveCP: save crop parameters for the SOLANUM model
################################################################################
#
# 
# 
# cpl = list("crop_parameter" = data.frame(1:8, letters[1:8]))
#
#

cpar_names <- c("wmax", "tm", "te", "A", "tu", "b", "RUE", "DMc")
cpar_definitions <- c("Maximum canopy cover index", 
                      "Thermal time at the maximum canopy cover growth rate",
                      "Thermal time at the maximum canopy cover value",
                      "Maximum harvest index",
                      "Thermal time at maximum tuber partition rate",
                      "Thermal time just before the tuber initiation process",
                      "Average radiation use efficiency",
                      "Dry matter concentration of tubers")
