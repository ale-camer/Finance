library(quantmod)
library(lubridate)

black_and_scholes = function(S, K, t, r, sigma, type) {
  d1 = (log(S/K) + (r+sigma^2/2)*t) / (sigma*sqrt(t))
  d2 = d1 - sigma * sqrt(t)
  if (type == "C")
    result = S * pnorm(d1) - K * exp(-r*t) * pnorm(d2)
  if (type == "P")
    result = K * exp(-r*t) * pnorm(-d2) - S * pnorm(-d1)
  return(result)
}

getSymbols('DGS10', src = "FRED", from = "2020-01-01", to = today(), auto.assign = TRUE)
r = as.numeric(last(na.approx(DGS10)))

getSymbols("AAPL", src = "yahoo", from = "2020-01-01", to = today(), auto.assign = TRUE)
S = as.numeric(last(na.approx(AAPL$AAPL.Close)))
sigma = sd(dailyReturn(AAPL$AAPL.Close))*sqrt(252)

AAPL_OPTION = getOptionChain("AAPL", "2020")
K = max(AAPL_OPTION$dic..11.2020$calls$Strike) # Better put it manually
t = as.numeric(as.Date("2020-12-11") - today())

black_and_scholes(S, K, t, r, sigma, "C")
black_and_scholes(S, K, t, r, sigma, "P")

# If you want to price other stock option just replace all tickers in the script with cntl+f