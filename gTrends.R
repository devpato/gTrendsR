#Google Trends using gTrends Library
#https://cran.r-project.org/web/packages/Rcpp/index.html
install.packages("gtrendsR")
install.packages("devtools")
devtools::install_github("rstudio/shiny")
#install XML package
library(gtrendsR)
usr <- "google email"  # alternatively store as options() or env.var
psw <- "google password"        # idem
gconnect(usr, psw)       # stores handle in environment
sport_trend <- gtrends(c("nhl", "nba", "nfl"))
plot(sport_trend)        # data set also included in package