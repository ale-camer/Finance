# -*- coding: utf-8 -*-
"""Seasonality Forecast.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1Adyu7rCsFKMseBz0cxpErYi5lsqs1BO3

## Seasonality
"""

import numpy as np
import pandas as pd
from sklearn.linear_model import LinearRegression

first_Q = [1,0,0,0] * 5
second_Q = [0,1,0,0] * 5
third_Q = [0,0,1,0] * 5
period1 = np.arange(1, 5*4 + 1, 1)
period2 = np.arange(21, 25, 1)
sales = [20, 100, 175, 13, 37, 136, 245, 26, 75, 155, 326, 48, 92, 202, 384, 82, 176, 282, 445, 181]

df1 = pd.DataFrame([first_Q, second_Q, third_Q])
df1 = df1.T
df1.rename(columns = {0 : '1Q', 1 : '2Q', 2 : '3Q'}, inplace = True)

df2 = pd.DataFrame([first_Q, second_Q, third_Q, period1])
df2 = df2.T
df2.rename(columns = {0 : '1Q', 1 : '2Q', 2 : '3Q', 3 : 'period'}, inplace = True)

model1 = LinearRegression().fit(df1, np.array(sales).reshape((-1, 1)))
coefs1 = model1.coef_

model2 = LinearRegression().fit(df2, np.array(sales).reshape((-1, 1)))
coefs2 = model2.coef_

sales_first_year = [round(model1.intercept_[0] + coefs1[0][0]), round(model1.intercept_[0] + coefs1[0][1]), round(model1.intercept_[0] + coefs1[0][2]), round(model1.intercept_[0])]

sales_second_year = []

for i in range(len(coefs2[0])):
  a = model2.intercept_[0] + coefs2[0][i] + coefs2[0][3] * period2[i]
  sales_second_year.append(round(a))

print(f'First year sales per quarter: {sales_first_year}' , '\n', f'Second year sales per quarter: {sales_second_year}')



import matplotlib.pyplot as plt

total_sales = np.concatenate([sales, sales_first_year, sales_second_year])

plt.plot(total_sales)
plt.vlines(len(sales), 0, max(total_sales), color = 'r')
plt.vlines(len(sales) + len(sales_first_year), 0, max(total_sales), color = 'r')
plt.title('Seasonality')

pass

"""## Forecast"""

sales2 = [4, 2, 3, 5, 6, 3, 5, 7, 7, 6, 6, 8]
sales2_ma = pd.Series(sales2).rolling(window = 4).mean().dropna()
sales2_cma = pd.Series(sales2_ma).rolling(window = 2).mean().dropna()
irr_seas_comp = sales2[2:10] / sales2_cma
seas_index = [(irr_seas_comp.values[2]+irr_seas_comp.values[6])/2, 
               (irr_seas_comp.values[3]+irr_seas_comp.values[7])/2, 
               (irr_seas_comp.values[0]+irr_seas_comp.values[4])/2,
               (irr_seas_comp.values[1]+irr_seas_comp.values[5])/2]
adjustment = len(seas_index)/sum(seas_index)

adj_seas_ind = []
j = 0

while j < 3:
  j += 1
  for i in range(len(seas_index)):
    a = seas_index[i] * adjustment
    adj_seas_ind.append(a)

unseas_sales = []

for i in range(len(sales2)):
  a = sales2[i] / adj_seas_ind[i]
  unseas_sales.append(a)

period3 = np.arange(1, 13, 1)
period4 = np.arange(13, 17, 1)
model3 = LinearRegression().fit(np.array(period3).reshape((-1, 1)), np.array(unseas_sales).reshape((-1, 1)))

fut_unseas_sales = []

for i in range(len(period4)):
  a = model3.intercept_[0] + model3.coef_[0][0] * period4[i]
  fut_unseas_sales.append(a)

forecast = []

for i in range(len(fut_unseas_sales)):
  a = fut_unseas_sales[i] * (seas_index[i] * adjustment)
  forecast.append(a)

total_sales2 = np.concatenate([sales2, forecast])

plt.plot(total_sales2)
plt.vlines(len(sales2), 0, max(total_sales2), color = 'r')
plt.title('Forecast')

pass