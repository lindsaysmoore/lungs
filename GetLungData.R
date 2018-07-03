##########################################################################
# GEOquery downloads SOFT data from GEO given the GDS number using R
# 1. GEO dataset GDS2771, which is Large airway epithelial 
#    cells from cigarette smokers with suspect lung cancer
#    https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3694402/
#
# 2. GEO dataset GDS5499 is analysis of PBMCs from patients with 
#    idiopathic pulmonary arterial hypertension (IPAH), systemic 
#    sclerosis (SSc), SSc associated PAH (SSc-PAH), and SSc complicated 
#    by interstitial lung disease and PH (SSc-PH-ILD). 
#
# install and load GEOquery
##########################################################################

#source("http://www.bioconductor.org/biocLite.R")
#biocLite("GEOquery")
library("GEOquery")

# get the data
#df <- getGEO("GDS2771")
df<- getGEO("GDS5499")
#write csv files for reading in python
write.csv(df@dataTable@table,'heart_data.csv')
write.csv(df@dataTable@columns,'heart_annot.csv')
