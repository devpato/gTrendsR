library(ggplot2)
library(xts)
library(dygraphs)

# Get data from Yahoo Finance
#Variables of the URL and what they mean:
#s=MSFT (Stands for the code that Microsoft uses in the stock market)
#a=01 (Starting month)
#b=24 (Starting date)
#c=2015 (Starting year)
#d=07(Ending month)
#e=24 (Ending month)
#f=2016 (Ending year)
#g=d (Daily)

company_url <- "http://real-chart.finance.yahoo.com/table.csv?s=MSFT&a=01&b=24&c=2015&d=07&e=24&f=2016&g=d&ignore=.csv"


yahoo.read <- function(url)
{
  dat <- read.table(url,header=TRUE,sep=",")
  df <- dat[,c(1,5)]
  df$Date <- as.Date(as.character(df$Date))
  return(df)
}

company  <- yahoo.read(company_url)

ggplot(company,aes(Date,Close)) + 
  geom_line(aes(color="Microsoft")) +
    labs(color="Legend") +
      scale_colour_manual("", breaks = c("Microsoft"),
        values = c("blue")) +
          ggtitle("Closing Stock Prices: Microsoft") + 
              theme(plot.title = element_text(lineheight=.7, face="bold"))