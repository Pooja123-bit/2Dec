library(dplyr)

load("fish_data.Rdata")
#create a field to order stations by on the plot
fish<-ddply(fish;variables=c("transect.id"),function(t)){

t<-unique(t$region)

return(t)
],.progress = "text"}


trs<-fish[c("transect.id","tr.no")]
trs<-arrange(trs,tr.no)
trs_levels<-unique(trs$transect)

fish$tr<-factor(fish$transect.id, levels=trs_levels, labels=trs_levels)
fish$log10.density<-log10(fish.parcel.density.m3+1)
region<-c("10W","9W","8W","7W","6W","5W","4W","3W","2W","1W",
          "7C","3C","2C","7B","6B","2B","1B")

#Set intervals for color bar---
g<-unique(fish$nice_label)

t$tow_f<-factor(fish$tow.depth, levels=c("S", "W", ))


max<-round(max(fish$log10.density), digits-2)
intervals<-max/10

if(max==0)
  max<-round(max(fish$log10.density),3)
]
if(intervals==0)
  intervals<-round(max(fish$log10.density),)
  

