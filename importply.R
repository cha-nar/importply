                    # # # # # # # # # # # # # # # # # # # # # # # #
                    # # # #                                 # # # #
                    # # # #         .PLY IMPORTATION        # # # #
                    # # # #      N. Chatar August 2021      # # # #
                    # # # #                                 # # # #
                    # # # # # # # # # # # # # # # # # # # # # # # #


import.ply <- function()
{
  
  ## Check for the packages of interest
  packages = c("geomorph")
  
  ## Load or install&load the packages
  package.check <- lapply(packages,
                          FUN = function(x) 
                          {
                            if (!require(x, character.only = TRUE)) 
                            {
                              install.packages(x, dependencies = TRUE)
                              library(x, character.only = TRUE)
                            }
                          })

  
  # Only support .ply ASCII fromat  /!\ #
  # if not iin ply ASCII format, return this error messge:
  #   Error in read.ply(file = plylist[i], ShowSpecimen = FALSE) : 
  #   PLY file is not ASCII format: format = binary_little_endian1.0
  
  wd <- getwd()
  
  # Create the list with ply files
  plylist <<- dir(path = paste(wd), pattern='.ply')
  plylist
  
  # Create mesh3d objects named as the ply files, it can be very long  depending on the number of files 
  for(i in 1:length(plylist))
  {
    assign(paste0(c(substr(c(plylist),1,nchar(c(plylist))-4))[i]),read.ply(file=plylist[i], ShowSpecimen=FALSE), inherits = TRUE)
  }

}
