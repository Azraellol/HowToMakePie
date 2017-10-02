values <- read.csv("ToppingMoviePreference.csv",row.names=1, check.names=FALSE,header=TRUE)
values2 <- read.csv("OD_Data.csv",row.names=1, header=TRUE)

require("RColorBrewer")
indices <- values[,1]!=0
pie(values[,1][indices],labels=row.names(values)[indices],col=brewer.pal(length(values[,1][indices]),'Spectral'))
legend("topleft",legend=row.names(values)[indices],fill=brewer.pal(length(values[,1][indices]),'Spectral'))

for(c in 1:ncol(values)){
  indices <- values[,c]!=0
  par(mar=c(3,4,2,3))
  pie(values[,c][indices],labels=row.names(values)[indices],col=brewer.pal(length(values[,c][indices]),'Spectral'),main=colnames(values)[c])
  legend("topleft",legend=row.names(values)[indices],fill=brewer.pal(length(values[,c][indices]),'Spectral'),cex=0.6)
  
}

# other color options:
# grey.colors(nrow(values))
# brewer.pal(nrow(values),"Paired")
