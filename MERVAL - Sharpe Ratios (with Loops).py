import pandas as pd
import yfinance as yf
import numpy as np
from math import sqrt
from pandas_datareader import data
import matplotlib.pyplot as plt
plt.style.use('fivethirtyeight')

tickers = ['ALUA.BA',	'BBAR.BA',	'BMA.BA',	'BYMA.BA',	'CEPU.BA',	'COME.BA',	'CRES.BA',	'CVH.BA',	'EDN.BA',	'GGAL.BA',	'LOMA.BA',	'MIRG.BA',	'PAMP.BA',	'SUPV.BA',	'TECO2.BA',	'TGNO4.BA',	'TGSU2.BA',	'TRAN.BA',	'TXAR.BA',	'VALO.BA',	'YPFD.BA']

data = pd.DataFrame()
for sym in tickers:
    data[sym] = yf.download(sym, start = '2020-01-01', end = '2020-12-31')['Adj Close']
data = data.dropna()

returns = ((data / data.shift(1)) - 1).dropna().mean() * 252
returns = returns.replace(0, np.nan)
returns = returns.dropna(how = 'all', axis = 0)
returns = returns.replace(np.nan, 0)
sigma = ((data / data.shift(1)) - 1).dropna().std() * sqrt(252)
sigma = sigma.replace(0, np.nan)
sigma = sigma.dropna(how = 'all', axis = 0)
sigma = sigma.replace(np.nan, 0)
TPM = 0.38
sharpe_ratios = (returns - TPM) / sigma
sharpe_ratios = sharpe_ratios.sort_values(ascending = True)

plt.barh(y=sharpe_ratios.index, width=sharpe_ratios)
plt.title('MERVAL - Sharpe Ratios')
plt.ylabel('Companies')
plt.xlabel('Sharpe Ratios')
plt.xlim(min(sharpe_ratios),max(sharpe_ratios))
plt.show()