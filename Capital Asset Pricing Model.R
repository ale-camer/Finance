# Install necessary libraries

install.packages("quantmod")
library(quantmod)

# Download company data since stocks issue

getSymbols('DGS10', src = "FRED", from = "1997-05-15", to = "2019-12-31", auto.assign = TRUE)
getSymbols("AMZN", from = "1997-05-15", to = "2019-12-31", auto.assign = TRUE)
getSymbols("^IXIC", from = "1997-05-15", to = "2019-12-31", auto.assign = TRUE)

# Take the close price and Risk Free Rate (RFR)

RFR = as.numeric(last(DGS10))
AMAZON = AMZN$AMZN.Close
NASDAQ100 = IXIC$IXIC.Close

# Calculate Beta

AMZN_ANNUALLY_RTN = annualReturn(AMAZON)
MRVL_ANNUALLY_RTN = annualReturn(NASDAQ100)
beta = as.numeric(cov(AMZN_ANNUALLY_RTN,MRVL_ANNUALLY_RTN)/var(MRVL_ANNUALLY_RTN))
beta

# Calculate Market Risk Premium (MRP)

MRP = ((as.numeric(last(NASDAQ100))/as.numeric(first(NASDAQ100)))^(1/as.numeric(nyears(NASDAQ100))) - 1) * 100
MRP

# Calculate Expected Return (Ke)

Ke = RFR + beta * (MRP - RFR) 
Ke