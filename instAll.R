#This function makes installing easy. Looks at possible repositories for installing, if it finds none on CRAN, it will tell you to use github or bitbucked, which can be done with adding "github" or "bitbucket" as the "repo" input parameter. Defaults to CRAN.
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
