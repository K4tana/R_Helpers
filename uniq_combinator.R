#This function looks at a vector of elements and outputs all unique combinations of every vector element, similar to expand.grid, just without respecting ordering - every element combination is only represented once. Works downstream from vector start and is an extension for expand.grid, written in base R. 
#
uniq_combinator <- function(input=NULL){
  if(is.null(input)){
    stop("No function input specified.")
  }
  #z is a counting helper variable
  z <- 0
  #a and b are vectors to be combined.
  a <- c()
  b <- c()
  #this segment fills the vectors with all possible combinations.
  for(i in 1:length(input)){
    z <- i+1
    for (j in z:length(input)){
      if(z>length(input)){
        break
      }else{
        a <- c(a,input[i])
        b <- c(b,input[z])
        z <- z+1
      }
    }
  }
  dd <- data.frame(a,b)
  return(dd)
}
