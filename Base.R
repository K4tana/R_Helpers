instAll <- function(x, repo=NULL) {
  `%notin%` <- Negate(`%in%`)
  if("remotes" %notin% rownames(installed.packages()))
    {
    install.packages("remotes")
    }
    require(remotes)
    if(x %in% rownames(installed.packages()))
    {
      cat("Package is already installed")
    }
    else
    {
      if(is.null(repo))
      {
        install.packages(x)
        if(x %notin% rownames(installed.packages()))
        {
          warning("Package not found. Please specify source or use other functions from the remotes package!")
          stop()
        }
      }
      else
        {
          if(repo=="github")
          {
            install_github(x)
          }
          else
            {
              if(repo=="bitbucket")
              {
                install_bitbucket(x)
              }
              else
              {
                warning("Package not found. Please specify source or use other functions from the remotes package!")
              }
            }
        }
    }
}

cls <- function(){
    cat("\014")
}

ddiv <- function(x,y) {
x-y/x
}

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