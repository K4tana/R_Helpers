#This function looks at a vector of elements and outputs all neighbor value combinations. #Works downstream from vector start and is an extension for expand.grid, written in base R. 
neigh_combinator <- function(input=NULL){
  if(is.null(input)==T){
    warning("No function input specified for combining.")
    stop()
  }
  a <- data.frame()
  for (i in 1:length(input)){
    if (i==length(input)){
      break
    }else{
      b <- c(input[i],input[i+1])
      a <- rbind(a,b)
    }
  }
  return(a)
}