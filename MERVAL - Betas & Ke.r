library(quantmod)

getSymbols("^MERV", src = "yahoo", from = "2019-12-01", to = "2020-12-01", auto.assign = TRUE)
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
MERVAL = na.approx(MERV)

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
MERVAL = MERVAL$MERV.Adjusted

ALUA_ANN_RTN = dailyReturn(ALUA)
BBAR_ANN_RTN = dailyReturn(BBAR)
BMA_ANN_RTN = dailyReturn(BMA)
BYMA_ANN_RTN = dailyReturn(BYMA)
CEPU_ANN_RTN = dailyReturn(CEPU)
COME_ANN_RTN = dailyReturn(COME)
CRES_ANN_RTN = dailyReturn(CRES)
CVH_ANN_RTN = dailyReturn(CVH)
EDN_ANN_RTN = dailyReturn(EDN)
GGAL_ANN_RTN = dailyReturn(GGAL)
HARG_ANN_RTN = dailyReturn(HARG)
LOMA_ANN_RTN = dailyReturn(LOMA)
MIRG_ANN_RTN = dailyReturn(MIRG)
PAMP_ANN_RTN = dailyReturn(PAMP)
SUPV_ANN_RTN = dailyReturn(SUPV)
TECO2_ANN_RTN = dailyReturn(TECO2)
TGSU2_ANN_RTN = dailyReturn(TGSU2)
TXAR_ANN_RTN = dailyReturn(TXAR)
VALO_ANN_RTN = dailyReturn(VALO)
YPFD_ANN_RTN = dailyReturn(YPFD)
MRVL_ANN_RTN = dailyReturn(MERVAL)

beta_ALUA = cov(ALUA_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_BBAR = cov(BBAR_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_BMA = cov(BMA_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_BYMA = cov(BYMA_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_CEPU = cov(CEPU_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_COME = cov(COME_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_CRES = cov(CRES_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_CVH = cov(CVH_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_EDN = cov(EDN_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_GGAL = cov(GGAL_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_HARG = cov(HARG_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_LOMA = cov(LOMA_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_MIRG = cov(MIRG_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_PAMP = cov(PAMP_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_SUPV = cov(SUPV_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_TECO2 = cov(TECO2_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_TGSU2 = cov(TGSU2_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_TXAR = cov(TXAR_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_VALO = cov(VALO_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)
beta_YPFD = cov(YPFD_ANN_RTN,MRVL_ANN_RTN)/var(MRVL_ANN_RTN)

betas = data.frame(c(beta_ALUA,
                     beta_BBAR,
                     beta_BMA,
                     beta_BYMA,
                     beta_CEPU,
                     beta_COME,
                     beta_CRES,
                     beta_CVH,
                     beta_EDN,
                     beta_GGAL,
                     beta_HARG,
                     beta_LOMA,
                     beta_MIRG,
                     beta_PAMP,
                     beta_SUPV,
                     beta_TECO2,
                     beta_TGSU2,
                     beta_TXAR,
                     beta_VALO,
                     beta_YPFD
))
colnames(betas) = "Rendimiento esperado MERVAL"
rownames(betas) = c("beta_ALUA",
                    "beta_BBAR",
                    "beta_BMA",
                    "beta_BYMA",
                    "beta_CEPU",
                    "beta_COME",
                    "beta_CRES",
                    "beta_CVH",
                    "beta_EDN",
                    "beta_GGAL",
                    "beta_HARG",
                    "beta_LOMA",
                    "beta_MIRG",
                    "beta_PAMP",
                    "beta_SUPV",
                    "beta_TECO2",
                    "beta_TGSU2",
                    "beta_TXAR",
                    "beta_VALO",
                    "beta_YPFD")
betas

MRP = ((as.numeric(last(MERVAL))/as.numeric(first(MERVAL)))^(1/as.numeric(ndays(MERVAL))) - 1) * 100
TPM = 38 # Tasa de política monetaria

Ke_ALUA = TPM + beta_ALUA * (MRP - TPM)
Ke_BBAR = TPM + beta_BBAR * (MRP - TPM)
Ke_BMA = TPM + beta_BMA * (MRP - TPM)
Ke_BYMA = TPM + beta_BYMA * (MRP - TPM)
Ke_CEPU = TPM + beta_CEPU * (MRP - TPM)
Ke_COME = TPM + beta_COME * (MRP - TPM)
Ke_CRES = TPM + beta_CRES * (MRP - TPM)
Ke_CVH = TPM + beta_CVH * (MRP - TPM)
Ke_EDN = TPM + beta_EDN * (MRP - TPM)
Ke_GGAL = TPM + beta_GGAL * (MRP - TPM)
Ke_HARG = TPM + beta_HARG * (MRP - TPM)
Ke_LOMA = TPM + beta_LOMA * (MRP - TPM)
Ke_MIRG = TPM + beta_MIRG * (MRP - TPM)
Ke_PAMP = TPM + beta_PAMP * (MRP - TPM)
Ke_SUPV = TPM + beta_SUPV * (MRP - TPM)
Ke_TECO2 = TPM + beta_TECO2 * (MRP - TPM)
Ke_TGSU2 = TPM + beta_TGSU2 * (MRP - TPM)
Ke_TXAR = TPM + beta_TXAR * (MRP - TPM)
Ke_VALO = TPM + beta_VALO * (MRP - TPM)
Ke_YPFD = TPM + beta_YPFD * (MRP - TPM)

Ke = data.frame(c(Ke_ALUA,
                  Ke_BBAR,
                  Ke_BMA,
                  Ke_BYMA,
                  Ke_CEPU,
                  Ke_COME,
                  Ke_CRES,
                  Ke_CVH,
                  Ke_EDN,
                  Ke_GGAL,
                  Ke_HARG,
                  Ke_LOMA,
                  Ke_MIRG,
                  Ke_PAMP,
                  Ke_SUPV,
                  Ke_TECO2,
                  Ke_TGSU2,
                  Ke_TXAR,
                  Ke_VALO,
                  Ke_YPFD
))
colnames(Ke) = "Rendimiento esperado MERVAL"
rownames(Ke) = c("Ke_ALUA",
                 "Ke_BBAR",
                 "Ke_BMA",
                 "Ke_BYMA",
                 "Ke_CEPU",
                 "Ke_COME",
                 "Ke_CRES",
                 "Ke_CVH",
                 "Ke_EDN",
                 "Ke_GGAL",
                 "Ke_HARG",
                 "Ke_LOMA",
                 "Ke_MIRG",
                 "Ke_PAMP",
                 "Ke_SUPV",
                 "Ke_TECO2",
                 "Ke_TGSU2",
                 "Ke_TXAR",
                 "Ke_VALO",
                 "Ke_YPFD")
Ke 
