par(mfrow = c(3,4))

# Long Straddle

long_call_strike = 100
long_call_premium = -12
long_put_strike = 100
long_put_premium = -12

spot_price = seq(10,300,10)
call_value = ifelse(long_call_strike < spot_price, spot_price - long_call_strike, 0)
put_value = ifelse(long_put_strike > spot_price, long_put_strike - spot_price, 0)
premiums_cost = rep(long_call_premium + long_put_premium, length(spot_price))
yield = call_value + put_value + premiums_cost
a = {plot(y = yield, x = spot_price, type = "l", main = "Long Straddle") +
abline(h = 0, col = "red")}

# Short Straddle

short_call_strike = 100
short_call_premium = 12
short_put_strike = 100
short_put_premium = 12

spot_price = seq(10,300,10)
call_value = ifelse(short_call_strike < spot_price, - (spot_price - short_call_strike), 0)
put_value = ifelse(short_put_strike > spot_price, - (short_put_strike - spot_price), 0)
premiums_cost = rep(short_call_premium + short_put_premium, length(spot_price))
yield = call_value + put_value + premiums_cost
b = {plot(y = yield, x = spot_price, type = "l", main = "Short Straddle") +
abline(h = 0, col = "red")}

# Covered Call

stock_price = 100
short_call_strike = 110
short_call_premium = 4

spot_price = seq(10,300,10)
stock_value = spot_price - stock_price
call_value = ifelse(short_call_strike < spot_price, - (spot_price - short_call_strike), 0)
premiums_cost = rep(short_call_premium, length(spot_price))
yield = call_value + stock_value + premiums_cost
c = {plot(y = yield, x = spot_price, type = "l", main = "Covered Call") +
abline(h = 0, col = "red")}

# Put Protective

stock_price = 100
long_put_strike = 90
long_put_premium = -4

spot_price = seq(10,300,10)
stock_value = spot_price - stock_price
put_value = ifelse(long_put_strike > spot_price, long_put_strike - spot_price, 0)
premiums_cost = rep(long_put_premium, length(spot_price))
yield = put_value + stock_value + premiums_cost
d = plot(y = yield, x = spot_price, type = "l", main = "Put Protective") +
abline(h = 0, col = "red")

# Long Strangle

long_call_strike = 110
long_call_premium = -10
long_put_strike = 90
long_put_premium = -4

spot_price = seq(10,300,10)
call_value = ifelse(long_call_strike < spot_price, spot_price - long_call_strike, 0)
put_value = ifelse(long_put_strike > spot_price, long_put_strike - spot_price, 0)
premiums_cost = rep(long_call_premium + long_put_premium, length(spot_price))
yield = call_value + put_value + premiums_cost
e = {plot(y = yield, x = spot_price, type = "l", main = "Long Strangle") +
abline(h = 0, col = "red")}

# Short Straddle

short_call_strike = 110
short_call_premium = 10
short_put_strike = 90
short_put_premium = 4

spot_price = seq(10,300,10)
call_value = ifelse(short_call_strike < spot_price, - (spot_price - short_call_strike), 0)
put_value = ifelse(short_put_strike > spot_price, - (short_put_strike - spot_price), 0)
premiums_cost = rep(short_call_premium + short_put_premium, length(spot_price))
yield = call_value + put_value + premiums_cost
f = {plot(y = yield, x = spot_price, type = "l", main = "Short Straddle") +
abline(h = 0, col = "red")}

# Long Butterfly

short_call_strike_1 = 90
short_call_premium_1 = 17
short_call_strike_2 = 110
short_call_premium_2 = 5
long_call_strike = 100
long_call_premium = -20

spot_price = seq(10,300,10)
short_call_value_1 = ifelse(short_call_strike_1 < spot_price, - (spot_price - short_call_strike_1), 0)
short_call_value_2 = ifelse(short_call_strike_2 < spot_price, - (spot_price - short_call_strike_2), 0)
long_call_value = ifelse(long_call_strike < spot_price, 2 * (spot_price - long_call_strike), 0)
premiums_cost = rep(short_call_premium_1 + short_call_premium_2 + long_call_premium, length(spot_price))
yield = short_call_value_1 + short_call_value_2 + long_call_value + premiums_cost
g = {plot(y = yield, x = spot_price, type = "l", main = "Long Butterfly") +
abline(h = 0, col = "red")}

# Short Butterfly

long_call_strike_1 = 90
long_call_premium_1 = -17
long_call_strike_2 = 110
long_call_premium_2 = -5
short_call_strike = 100
short_call_premium = 20

spot_price = seq(10,300,10)
short_call_value_1 = ifelse(short_call_strike_1 < spot_price, spot_price - short_call_strike_1, 0)
short_call_value_2 = ifelse(short_call_strike_2 < spot_price, spot_price - short_call_strike_2, 0)
long_call_value = ifelse(long_call_strike < spot_price, -2 * (spot_price - long_call_strike), 0)
premiums_cost = rep(long_call_premium_1 + long_call_premium_2 + short_call_premium, length(spot_price))
yield = short_call_value_1 + short_call_value_2 + long_call_value + premiums_cost
h = {plot(y = yield, x = spot_price, type = "l", main = "Short Butterfly") +
abline(h = 0, col = "red")}

# Long Bull Spread

long_call_strike = 100
long_call_premium = -12
short_call_strike = 120
short_call_premium = 4

spot_price = seq(10,300,10)
short_call_value = ifelse(short_call_strike < spot_price, - (spot_price - short_call_strike), 0)
long_call_value = ifelse(long_call_strike < spot_price, spot_price - long_call_strike, 0)
premiums_cost = rep(long_call_premium + short_call_premium, length(spot_price))
yield = short_call_value + long_call_value + premiums_cost
i = {plot(y = yield, x = spot_price, type = "l", main = "Long Bull Spread") +
abline(h = 0, col = "red")}

# Short Bull Spread

long_put_strike = 100
long_put_premium = -4
short_put_strike = 120
short_put_premium = 12

spot_price = seq(10,300,10)
short_put_value = ifelse(short_put_strike > spot_price, - (short_put_strike - spot_price), 0)
long_put_value = ifelse(long_put_strike > spot_price, long_put_strike - spot_price, 0)
premiums_cost = rep(long_put_premium + short_put_premium, length(spot_price))
yield = short_put_value + long_put_value + premiums_cost
j = {plot(y = yield, x = spot_price, type = "l", main = "Short Bull Spread") +
abline(h = 0, col = "red")}

# Long Bear Spread

long_call_strike = 120
long_call_premium = -4
short_call_strike = 100
short_call_premium = 12

spot_price = seq(10,300,10)
short_call_value = ifelse(short_call_strike < spot_price, - (spot_price - short_call_strike), 0)
long_call_value = ifelse(long_call_strike < spot_price, spot_price - long_call_strike, 0)
premiums_cost = rep(long_call_premium + short_call_premium, length(spot_price))
yield = short_call_value + long_call_value + premiums_cost
k = {plot(y = yield, x = spot_price, type = "l", main = "Long Bear Spread") +
abline(h = 0, col = "red")}

# Short Bull Spread

long_put_strike = 120
long_put_premium = -12
short_put_strike = 100
short_put_premium = 4

spot_price = seq(10,300,10)
short_put_value = ifelse(short_put_strike > spot_price, - (short_put_strike - spot_price), 0)
long_put_value = ifelse(long_put_strike > spot_price, long_put_strike - spot_price, 0)
premiums_cost = rep(long_put_premium + short_put_premium, length(spot_price))
yield = short_put_value + long_put_value + premiums_cost
l = {plot(y = yield, x = spot_price, type = "l", main = "Short Bull Spread") +
abline(h = 0, col = "red")}
