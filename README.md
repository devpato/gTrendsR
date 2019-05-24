# gTrendsR - Operation Research

#Google Trends using gTrends Library

Libraries that need to be installed

  install.packages("gtrendsR")
  
  install.packages("devtools")

If you get the RCPP error perform the following steps:

  -Download the RCPP package https://cran.r-project.org/web/packages/Rcpp/index.html
  
  -On the R console type: ".Library" You will see where you library directory is located at for the R files.
  
  -Go to that route in my case was "C:/PROGRA~1/R/R-33~1.2/library"
  
  -Copy paste the folder of RCPP you just downloaded into the library folder

If you get the XML error perfom the following steps:

  install.packages("XML")
  
#Stock Market - Retrive data from Yahoo Finance for stock market

  library(ggplot2)
  
  library(xts)
  
  library(dygraphs)
  

  # Get data from Yahoo Finance
  
  company_url <- "http://real-chart.finance.yahoo.com/table.csv?s=MSFT&a=01&b=24&c=2015&d=07&e=24&f=2016&g=d&ignore=.csv"
  
  Variables meanings:
  
  s=MSFT (Stands for the code that Microsoft uses in the stock market)
  
  a=01 (Starting month)
  
  b=24 (Starting date)
  
  c=2015 (Starting year)
  
  d=07(Ending month)
  
  e=24 (Ending month)
  
  f=2016 (Ending year)
  
  g=d (Daily)
