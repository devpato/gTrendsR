#Google Trends using gTrends Library
#https://cran.r-project.org/web/packages/Rcpp/index.html
#intall XML package
install.packages("gtrendsR")
install.packages("devtools")
devtools::install_github("rstudio/shiny")
require(ggplot2)
require(gridExtra)
#install XML package
library(gtrendsR)
usr <- "username for google"  # alternatively store as options() or env.var
psw <- "password for google"        # idem
gconnect(usr, psw)       # stores handle in environment
company <- gtrends(c("Microsoft",geo = c("US")), start_date = "2014-01-01", end_date = "2016-11-01")
plot(company)        # data set also included in package



