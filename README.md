# R_Helpers
Here I post my helper functions for use with R. 
In this readme, I'll provide an overview of what the functions do and what you can expect. 

## Background Utility
This is everything that does something to ease up your workflow or streamlines operations that have nothing in particular to do with direct data analysis. 

* [console_clear.R](https://github.com/K4tana/R_Helpers/blob/master/console_clear.R) - clears your console nice and quick
* [instAll.R](https://github.com/K4tana/R_Helpers/blob/master/instAll.R) - Custom all-in-one for different install commands from CRAN, github and bitbucket.
* [UpdatR](https://github.com/K4tana/R_Helpers/blob/master/UpdateR) - neat and handy script for updating R. Since they still haven't streamlined installing new versions to a usable degree, this will make it as easy as possible.

## Administrative functions
These functions allow for operations that don't exist yet in this way in R. Just source from raw and you can use them.

* [percentage_change.R](https://github.com/K4tana/R_Helpers/blob/master/percentage_change.R) - computes a percentage change of two variables. 
* [uniq_combinator.R](https://github.com/K4tana/R_Helpers/blob/master/uniq_combinator.R)] - Computes all possible unique combinations of vector elements without regard for order (e.g. 2 - 1 and 1 - 2 are the same for the function and produce one entry, depending on which number was first in the vector). This comes in handy in many analyses that require such a thing but don't want to dabble with fixing expand.grid duplicates. Current version does not filter duplicates.

