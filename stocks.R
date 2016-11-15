library(ggplot2)
library(xts)
library(dygraphs)

# Get IBM and Linkedin stock data from Yahoo Finance
company_url <- "http://real-chart.finance.yahoo.com/table.csv?s=MSFT&a=01&b=24&c=2015&d=07&e=24&f=2016&g=d&ignore=.csv"


yahoo.read <- function(url)
{
  dat <- read.table(url,header=TRUE,sep=",")
  df <- dat[,c(1,5)]
  df$Date <- as.Date(as.character(df$Date))
  return(df)
}

ibm  <- yahoo.read(company_url)

ggplot(ibm,aes(Date,Close)) + 
  geom_line(aes(color="Microsoft")) +
    labs(color="Legend") +
  scale_colour_manual("", breaks = c("Microsoft"),
                      values = c("blue")) +
  ggtitle("Closing Stock Prices: Microsoft") + 
  theme(plot.title = element_text(lineheight=.7, face="bold"))