# Seasonality

first_Q = rep(c(1,0,0,0), 5)
second_Q = rep(c(0,1,0,0), 5)
third_Q = rep(c(0,0,1,0), 5)
period = seq(1, 5*4, 1)
sales = c(20, 100, 175, 13, 37, 136, 245, 26, 75, 155, 326, 48, 92, 202, 384, 82, 176, 282, 445, 181)

reg = lm(sales ~ first_Q + second_Q + third_Q)
coefs = reg$coefficients

sales_next_year = c(coefs[1] + coefs[2],  coefs[1] + coefs[3], coefs[1] + coefs[4], coefs[1])
sales_total = c(sales, sales_next_year)

reg_2 = lm(formula = sales ~ first_Q + second_Q + third_Q + period)
coefs_2 = reg_2$coefficients
period_2 = seq(21, 24, 1)

sales_second_year = coefs_2[1] + coefs_2[2:5] + coefs_2[5] * period_2
sales_total_2 = c(sales_total, sales_second_year)

plot(sales_total_2, type = "l")

# Forecast

sales = c(4, 2, 3, 5, 6, 3, 5, 7, 7, 6, 6, 8) # last three years

sales_ma = zoo::rollmean(x = sales, k = 4) # quarterly data
sales_cma = zoo::rollmean(x = sales_ma, k = 2)
irr_seas_comp = sales[3:10] / sales_cma

seas_index = c((irr_seas_comp[3]+irr_seas_comp[7])/2, 
               (irr_seas_comp[4]+irr_seas_comp[8])/2, 
               (irr_seas_comp[1]+irr_seas_comp[5])/2,
               (irr_seas_comp[2]+irr_seas_comp[6])/2)
adjustment = length(seas_index)/sum(seas_index)
adj_seas_ind = rep(seas_index * adjustment, 3)
unseas_sales = sales/adj_seas_ind

period = seq(1, 12, 1)
reg = lm(formula = unseas_sales ~ period)
coefs = reg$coefficients

next_period = seq(13, 16, 1)
fut_unseas_sales = coefs[1] + coefs[2] * next_period
forecast = fut_unseas_sales * (seas_index * adjustment)
forecast

sales_fore = c(sales, forecast) 

plot(sales_fore, type = "l")

