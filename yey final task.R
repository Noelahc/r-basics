library(comprehenr)
library(dplyr)
to_vec(for(x in 1:6) x+1)
library(palmerpenguins)
peng=penguins
peng_na=apply(peng,1,function(x) any(is.na(x)))
peng$na<-peng_na

species=levels(peng$species)
species_mean=matrix(to_vec(for(i in species) colMeans(peng[peng$species==i,
c("bill_length_mm","flipper_length_mm")],na.rm=TRUE)),nrow=3,byrow=TRUE)

species_mean<-function(l){
  spec=levels(peng$species)
  peng_num=Filter(is.numeric,peng)
  means=matrix(to_vec(for(i in spec) colMeans(peng_num[peng$species==i,],na.rm=TRUE)),nrow=3,byrow=TRUE)
  means
}

