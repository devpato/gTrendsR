# gTrendsR - Operation Research

#Google Trends using gTrends Library
https://cran.r-project.org/web/packages/Rcpp/index.html

Libraries that neeed to be installed

  install.packages("gtrendsR")
  
  install.packages("devtools")

If you get the RCPP error perform the following steps:

  -Download the RCPP package https://cran.r-project.org/web/packages/Rcpp/index.html
  
  -On the R console type: ".Library" You will see where you library directory is located at for the R files.
  
  -Go to that route in my case was "C:/PROGRA~1/R/R-33~1.2/library"
  
  -Copy paste the folder of RCPP you just downloaded into the library folder

If you get the XML error perfom the following steps:

  install.packages("XML")
