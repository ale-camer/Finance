library(quantmod)

getSymbols("GGAL.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("ALUA.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("BBAR.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("BMA.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("BYMA.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("CEPU.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("COME.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("CRES.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("CVH.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("EDN.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("HARG.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("LOMA.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("MIRG.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("PAMP.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("SUPV.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("TECO2.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("TGSU2.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("TXAR.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("VALO.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
getSymbols("YPFD.BA", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)

TPM = 38 # Tasa de política monetaria

ALUA = na.approx(ALUA.BA)
BBAR = na.approx(BBAR.BA)
BMA = na.approx(BMA.BA)
BYMA = na.approx(BYMA.BA)
CEPU = na.approx(CEPU.BA)
COME = na.approx(COME.BA)
CRES = na.approx(CRES.BA)
CVH = na.approx(CVH.BA)
EDN = na.approx(EDN.BA)
GGAL = na.approx(GGAL.BA)
HARG = na.approx(HARG.BA)
LOMA = na.approx(LOMA.BA)
MIRG = na.approx(MIRG.BA)
PAMP = na.approx(PAMP.BA)
SUPV = na.approx(SUPV.BA)
TECO2 = na.approx(TECO2.BA)
TGSU2 = na.approx(TGSU2.BA)
TXAR = na.approx(TXAR.BA)
VALO = na.approx(VALO.BA)
YPFD = na.approx(YPFD.BA)

ALUA = ALUA$ALUA.BA.Adjusted
BBAR = BBAR$BBAR.BA.Adjusted
BMA = BMA$BMA.BA.Adjusted
BYMA = BYMA$BYMA.BA.Adjusted
CEPU = CEPU$CEPU.BA.Adjusted
COME = COME$COME.BA.Adjusted
CRES = CRES$CRES.BA.Adjusted
CVH = CVH$CVH.BA.Adjusted
EDN = EDN$EDN.BA.Adjusted
GGAL = GGAL$GGAL.BA.Adjusted
HARG = HARG$HARG.BA.Adjusted
LOMA = LOMA$LOMA.BA.Adjusted
MIRG = MIRG$MIRG.BA.Adjusted
PAMP = PAMP$PAMP.BA.Adjusted
SUPV = SUPV$SUPV.BA.Adjusted
TECO2 = TECO2$TECO2.BA.Adjusted
TGSU2 = TGSU2$TGSU2.BA.Adjusted
TXAR = TXAR$TXAR.BA.Adjusted
VALO = VALO$VALO.BA.Adjusted
YPFD = YPFD$YPFD.BA.Adjusted

ALUA_RTN = mean(dailyReturn(ALUA))*252
BBAR_RTN = mean(dailyReturn(BBAR))*252
BMA_RTN = mean(dailyReturn(BMA))*252
BYMA_RTN = mean(dailyReturn(BYMA))*252
CEPU_RTN = mean(dailyReturn(CEPU))*252
COME_RTN = mean(dailyReturn(COME))*252
CRES_RTN = mean(dailyReturn(CRES))*252
CVH_RTN = mean(dailyReturn(CVH))*252
EDN_RTN = mean(dailyReturn(EDN))*252
GGAL_RTN = mean(dailyReturn(GGAL))*252
HARG_RTN = mean(dailyReturn(HARG))*252
LOMA_RTN = mean(dailyReturn(LOMA))*252
MIRG_RTN = mean(dailyReturn(MIRG))*252
PAMP_RTN = mean(dailyReturn(PAMP))*252
SUPV_RTN = mean(dailyReturn(SUPV))*252
TECO2_RTN = mean(dailyReturn(TECO2))*252
TGSU2_RTN = mean(dailyReturn(TGSU2))*252
TXAR_RTN = mean(dailyReturn(TXAR))*252
VALO_RTN = mean(dailyReturn(VALO))*252
YPFD_RTN = mean(dailyReturn(YPFD))*252

ALUA_RISK = sd(dailyReturn(ALUA))*sqrt(252)
BBAR_RISK = sd(dailyReturn(BBAR))*sqrt(252)
BMA_RISK = sd(dailyReturn(BMA))*sqrt(252)
BYMA_RISK = sd(dailyReturn(BYMA))*sqrt(252)
CEPU_RISK = sd(dailyReturn(CEPU))*sqrt(252)
COME_RISK = sd(dailyReturn(COME))*sqrt(252)
CRES_RISK = sd(dailyReturn(CRES))*sqrt(252)
CVH_RISK = sd(dailyReturn(CVH))*sqrt(252)
EDN_RISK = sd(dailyReturn(EDN))*sqrt(252)
GGAL_RISK = sd(dailyReturn(GGAL))*sqrt(252)
HARG_RISK = sd(dailyReturn(HARG))*sqrt(252)
LOMA_RISK = sd(dailyReturn(LOMA))*sqrt(252)
MIRG_RISK = sd(dailyReturn(MIRG))*sqrt(252)
PAMP_RISK = sd(dailyReturn(PAMP))*sqrt(252)
SUPV_RISK = sd(dailyReturn(SUPV))*sqrt(252)
TECO2_RISK = sd(dailyReturn(TECO2))*sqrt(252)
TGSU2_RISK = sd(dailyReturn(TGSU2))*sqrt(252)
TXAR_RISK = sd(dailyReturn(TXAR))*sqrt(252)
VALO_RISK = sd(dailyReturn(VALO))*sqrt(252)
YPFD_RISK = sd(dailyReturn(YPFD))*sqrt(252)

ALUA_SR = (ALUA_RTN - TPM) / ALUA_RISK
BBAR_SR = (BBAR_RTN - TPM) / BBAR_RISK
BMA_SR = (BMA_RTN - TPM) / BMA_RISK
BYMA_SR = (BYMA_RTN - TPM) / BYMA_RISK
CEPU_SR = (CEPU_RTN - TPM) / CEPU_RISK
COME_SR = (COME_RTN - TPM) / COME_RISK
CRES_SR = (CRES_RTN - TPM) / CRES_RISK
CVH_SR = (CVH_RTN - TPM) / CVH_RISK
EDN_SR = (EDN_RTN - TPM) / EDN_RISK
GGAL_SR = (GGAL_RTN - TPM) / GGAL_RISK
HARG_SR = (HARG_RTN - TPM) / HARG_RISK
LOMA_SR = (LOMA_RTN - TPM) / LOMA_RISK
MIRG_SR = (MIRG_RTN - TPM) / MIRG_RISK
PAMP_SR = (PAMP_RTN - TPM) / PAMP_RISK
SUPV_SR = (SUPV_RTN - TPM) / SUPV_RISK
TECO2_SR = (TECO2_RTN - TPM) / TECO2_RISK
TGSU2_SR = (TGSU2_RTN - TPM) / TGSU2_RISK
TXAR_SR = (TXAR_RTN - TPM) / TXAR_RISK
VALO_SR = (VALO_RTN - TPM) / VALO_RISK
YPFD_SR = (YPFD_RTN - TPM) / YPFD_RISK

Sharpe_Ratios = data.frame(c(ALUA_SR,
                             BBAR_SR,
                             BMA_SR,
                             BYMA_SR,
                             CEPU_SR,
                             COME_SR,
                             CRES_SR,
                             CVH_SR,
                             EDN_SR,
                             GGAL_SR,
                             HARG_SR,
                             LOMA_SR,
                             MIRG_SR,
                             PAMP_SR,
                             SUPV_SR,
                             TECO2_SR,
                             TGSU2_SR,
                             TXAR_SR,
                             VALO_SR,
                             YPFD_SR))

colnames(Sharpe_Ratios) = "Sharpe Ratios MERVAL"
rownames(Sharpe_Ratios) = c("SR_ALUA",
                            "SR_BBAR",
                            "SR_BMA",
                            "SR_BYMA",
                            "SR_CEPU",
                            "SR_COME",
                            "SR_CRES",
                            "SR_CVH",
                            "SR_EDN",
                            "SR_GGAL",
                            "SR_HARG",
                            "SR_LOMA",
                            "SR_MIRG",
                            "SR_PAMP",
                            "SR_SUPV",
                            "SR_TECO2",
                            "SR_TGSU2",
                            "SR_TXAR",
                            "SR_VALO",
                            "SR_YPFD")
Sharpe_Ratios 
