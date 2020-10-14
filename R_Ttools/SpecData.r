pollutantmean <- function(directory,polutant,id){
  means = 0
  for (i in id){
    if (i<10){
      data = read.csv(paste(directory,"/","00",i,".csv",sep = ""))
      means = means +mean(na.omit(data[[polutant]]))
    }
    else{
      data = read.csv(paste(directory,"/","0",i,".csv",sep = ""))
      means = means +mean(na.omit(data[[polutant]]))
    }
  }  
  means = means/length(id)
  print(means)
}
pollutantmean("specdata","nitrate",23)

