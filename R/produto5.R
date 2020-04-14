############ Produto V  ##########################
##################################################
###### script desenvolvido por Mikael Lemos ######
###### versão 1.0 - 23.03.2020  ##################
##################################################

######
### Carregando / instalando pacotes
######

#install.packages('dplyr')
library('dplyr')

#install.packages("tidyr")
library('tidyr')

#install.packages("data.table")
library('data.table')

#install.packages('stringr')
library('stringr')

#install.packages('Amelia')
library('Amelia')

# install.packages("tidyverse")
library(tidyverse)

# install.packages("lubridate")
library(lubridate)

# install.packages("ggplot2")
library(ggplot2)

#library(xlsx)

#install.packages("rJava")

library(rJava)

#install.packages("read.dbc")

library(read.dbc)

#install.packages("forcats")

#library(forcats)

library("foreign")

#install.packages("foreign")

#install.packages("openxlsx")

library("openxlsx")

library(RColorBrewer)


##########################
##########################

###############################
#### Cobertura Vacinal ########
###############################

### Dados PNI

# 2016, 2017, 2018, 2019

pni_2016 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/A110506189_6_37_15.xlsx")

pni_2017 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/A110437189_6_37_15.xlsx")

pni_2018 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/A110040189_6_37_15.xlsx")

pni_2019 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/A110410189_6_37_15.xlsx")


### organizando tabelas

pni_2016 <- select(pni_2016,"Unidade.da.Federação", "099.Hepatite.B.em.crianças.até.30.dias", "073.Hepatite.B")

pni_2017 <- select(pni_2017,"Unidade.da.Federação", "099.Hepatite.B.em.crianças.até.30.dias", "073.Hepatite.B")

pni_2018 <- select(pni_2018,"Unidade.da.Federação", "099.Hepatite.B.em.crianças.até.30.dias", "073.Hepatite.B")

pni_2019 <- select(pni_2019,"Unidade.da.Federação", "099.Hepatite.B.em.crianças.até.30.dias", "073.Hepatite.B")

## chr para num

#2016
pni_2016$`099.Hepatite.B.em.crianças.até.30.dias` <- as.numeric(pni_2016$`099.Hepatite.B.em.crianças.até.30.dias`)

pni_2016$`073.Hepatite.B` <- as.numeric(pni_2016$`073.Hepatite.B`)

#2017 
pni_2017$`099.Hepatite.B.em.crianças.até.30.dias` <- as.numeric(pni_2017$`099.Hepatite.B.em.crianças.até.30.dias`)

pni_2017$`073.Hepatite.B` <- as.numeric(pni_2017$`073.Hepatite.B`)

#2018
pni_2018$`099.Hepatite.B.em.crianças.até.30.dias` <- as.numeric(pni_2018$`099.Hepatite.B.em.crianças.até.30.dias`)

pni_2018$`073.Hepatite.B` <- as.numeric(pni_2018$`073.Hepatite.B`)

#2019
pni_2019$`099.Hepatite.B.em.crianças.até.30.dias` <- as.numeric(pni_2019$`099.Hepatite.B.em.crianças.até.30.dias`)

pni_2019$`073.Hepatite.B` <- as.numeric(pni_2019$`073.Hepatite.B`)

## organizando tabelas

pni_2016 <- select(pni_2016,  "UF" = "Unidade.da.Federação" , "Hepatite B em crianças até 30 dias" = "099.Hepatite.B.em.crianças.até.30.dias",  "Hepatite B" = "073.Hepatite.B")

pni_2017 <- select(pni_2017,  "UF" = "Unidade.da.Federação" , "Hepatite B em crianças até 30 dias" = "099.Hepatite.B.em.crianças.até.30.dias",  "Hepatite B" = "073.Hepatite.B")

pni_2018 <- select(pni_2018,  "UF" = "Unidade.da.Federação" , "Hepatite B em crianças até 30 dias" = "099.Hepatite.B.em.crianças.até.30.dias",  "Hepatite B" = "073.Hepatite.B")

pni_2019 <- select(pni_2019,  "UF" = "Unidade.da.Federação" , "Hepatite B em crianças até 30 dias" = "099.Hepatite.B.em.crianças.até.30.dias",  "Hepatite B" = "073.Hepatite.B")

## Salvar tabelas xlsx

write.xlsx(pni_2016, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2016.xlsx")

pni_2016_qgis <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2016_qgis.xlsx")

pni_2016_R <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2016_R.xlsx")

pni_2016_R2 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2016_R2.xlsx")

write.csv(pni_2016_qgis, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2016_qgis.csv", fileEncoding = "UTF-8")


write.xlsx(pni_2017, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2017.xlsx")

pni_2017_qgis <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2017_qgis.xlsx")

pni_2017_R <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2017_R.xlsx")

pni_2017_R2 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2017_R2.xlsx")

write.csv(pni_2017_qgis, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2017_qgis.csv", fileEncoding = "UTF-8")


write.xlsx(pni_2018, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2018.xlsx")

pni_2018_qgis <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2018_qgis.xlsx")

pni_2018_R <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2018_R.xlsx")

pni_2018_R2 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2018_R2.xlsx")

write.csv(pni_2018_qgis, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2018_qgis.csv", fileEncoding = "UTF-8")


write.xlsx(pni_2019, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2019.xlsx")

pni_2019_qgis <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2019_qgis.xlsx")

pni_2019_R <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2019_R.xlsx")

pni_2019_R2 <- read.xlsx("/Users/lemos/OneDrive/Documentos/produtoV/pni_2019_R2.xlsx")

write.csv(pni_2019_qgis, "/Users/lemos/OneDrive/Documentos/produtoV/pni_2019_qgis.csv", fileEncoding = "UTF-8")


#### Plots PNI

## 2016

################################################

ggplot(data=pni_2016_R , aes(x=reorder(UF, -Hepatite.B.em.crianças.até.30.dias), y=Hepatite.B.em.crianças.até.30.dias )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B.em.crianças.até.30.dias), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2016_R$UF, "Minas Gerais")))

##################################################

################################################

ggplot(data=pni_2016_R , aes(x=reorder(UF, -Hepatite.B), y=Hepatite.B )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2016_R$UF, "Mato Grosso do Sul")))

##################################################

## 2017

################################################

ggplot(data=pni_2017_R , aes(x=reorder(UF, -Hepatite.B.em.crianças.até.30.dias), y=Hepatite.B.em.crianças.até.30.dias )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B.em.crianças.até.30.dias), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2017_R$UF, "Paraná")))

##################################################

################################################

ggplot(data=pni_2017_R , aes(x=reorder(UF, -Hepatite.B), y=Hepatite.B )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2017_R$UF, "Pará")))

##################################################

## 2018

################################################

ggplot(data=pni_2018_R , aes(x=reorder(UF, -Hepatite.B.em.crianças.até.30.dias), y=Hepatite.B.em.crianças.até.30.dias )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B.em.crianças.até.30.dias), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2018_R$UF, "Rio Grande do Norte")))

##################################################

################################################

ggplot(data=pni_2018_R , aes(x=reorder(UF, -Hepatite.B), y=Hepatite.B )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2018_R$UF, "Minas Gerais")))

##################################################

## 2019

################################################

ggplot(data=pni_2019_R , aes(x=reorder(UF, -Hepatite.B.em.crianças.até.30.dias), y=Hepatite.B.em.crianças.até.30.dias )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B.em.crianças.até.30.dias), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2019_R$UF, "Rio Grande do Norte")))

##################################################

################################################

ggplot(data=pni_2019_R , aes(x=reorder(UF, -Hepatite.B), y=Hepatite.B )) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Hepatite.B), position = position_stack(vjust = 1.05), size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Cobertura Vacinal (%)") + theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2017_R$UF, "Pará")))

##################################################

##### Função para destacar um elemento do eixo X ##########
colorado <- function(src, boulder) {
  if (!is.factor(src)) src <- factor(src)                   # make sure it's a factor
  src_levels <- levels(src)                                 # retrieve the levels in their order
  brave <- boulder %in% src_levels                          # make sure everything we want to make bold is actually in the factor levels
  if (all(brave)) {                                         # if so
    b_pos <- purrr::map_int(boulder, ~which(.==src_levels)) # then find out where they are
    b_vec <- rep("plain", length(src_levels))               # make'm all plain first
    b_vec[b_pos] <- "bold"                                  # make our targets bold
    b_vec                                                   # return the new vector
  } else {
    stop("All elements of 'boulder' must be in src")
  }
}
#############################################################

pni_2016_R2$ano <- "2016"
pni_2017_R2$ano <- "2017"
pni_2018_R2$ano <- "2018"
pni_2019_R2$ano <- "2019"


sc_pni <- do.call("rbind", list(pni_2016_R2, pni_2017_R2, pni_2018_R2, pni_2019_R2))

############################################################
ggplot(data = sc_pni, aes(x =UF, 
                                y = Hepatite.B.em.crianças.até.30.dias, 
                                group=ano, 
                                color=ano )) +
  geom_line() +
  geom_point() + 
  labs( 
    y="Cobertura Vacinal (%)", 
    x="Unidade Federativa"
  ) + geom_text(aes(label=Hepatite.B.em.crianças.até.30.dias),hjust=0, vjust=0, check_overlap = TRUE, size = 3) +  theme_minimal() +  theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(pni_2016_R2$UF, "Ceará")))
##############################################################

####################
#### Tratamento ####
####################


## 2019

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1901.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1902.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1903.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1904.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1905.dbc")
AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1906.dbc")
AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1907.dbc")
AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1908.dbc")
AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1909.dbc")
AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1910.dbc")
AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1911.dbc")
AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1912.dbc")

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1901.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1902.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1903.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1904.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1905.dbc")
AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1906.dbc")
AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1908.dbc")
AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1909.dbc")
AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1910.dbc")
AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1911.dbc")
AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1912.dbc")

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1901.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1902.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1903.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1904.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1905.dbc")
AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1906.dbc")
AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1907.dbc")
AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1908.dbc")
AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1909.dbc")
AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1910.dbc")
AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1911.dbc")
AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1912.dbc")

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1901.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1902.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1903.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1904.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1905.dbc")
AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1906.dbc")
AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1907.dbc")
AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1908.dbc")
AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1909.dbc")
AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1910.dbc")
AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1911.dbc")
AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1912.dbc")

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1901.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1902.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1903.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1904.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1905.dbc")
BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1906.dbc")
BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1907.dbc")
BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1908.dbc")
BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1909.dbc")
BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1910.dbc")
BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1911.dbc")
BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1912.dbc")

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1901.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1902.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1903.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1904.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1905.dbc")
CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1906.dbc")
CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1907.dbc")
CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1908.dbc")
CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1909.dbc")
CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1910.dbc")
CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1911.dbc")
CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1912.dbc")

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1901.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1902.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1903.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1904.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1905.dbc")
DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1906.dbc")
DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1907.dbc")
DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1908.dbc")
DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1909.dbc")
DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1910.dbc")
DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1911.dbc")
DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1912.dbc")

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1901.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1902.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1903.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1904.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1905.dbc")
ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1906.dbc")
ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1907.dbc")
ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1908.dbc")
ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1909.dbc")
ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1910.dbc")
ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1911.dbc")
ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1912.dbc")

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1901.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1902.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1903.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1904.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1905.dbc")
GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1906.dbc")
GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1907.dbc")
GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1908.dbc")
GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1909.dbc")
GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1910.dbc")
GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1911.dbc")
GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1912.dbc")

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1901.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1902.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1903.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1904.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1905.dbc")
MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1906.dbc")
MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1907.dbc")
MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1908.dbc")
MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1909.dbc")
MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1910.dbc")
MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1911.dbc")
MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1912.dbc")

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1901.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1902.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1903.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1904.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1905.dbc")
MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1906.dbc")
MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1907.dbc")
MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1908.dbc")
MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1909.dbc")
MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1910.dbc")
MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1911.dbc")
MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1912.dbc")

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1901.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1902.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1903.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1904.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1905.dbc")
MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1906.dbc")
MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1907.dbc")
MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1908.dbc")
MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1909.dbc")
MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1910.dbc")
MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1911.dbc")
MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1912.dbc")

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1901.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1902.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1903.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1904.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1905.dbc")
MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1906.dbc")
MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1907.dbc")
MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1908.dbc")
MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1909.dbc")
MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1910.dbc")
MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1911.dbc")
MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1912.dbc")

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1901.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1902.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1903.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1905.dbc")
PA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1906.dbc")
PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1907.dbc")
PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1908.dbc")
PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1909.dbc")
PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1910.dbc")
PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1911.dbc")
PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1912.dbc")

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1901.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1902.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1903.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1904.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1905.dbc")
PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1906.dbc")
PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1907.dbc")
PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1908.dbc")
PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1909.dbc")
PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1910.dbc")
PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1911.dbc")
PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1912.dbc")

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1901.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1902.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1903.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1904.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1905.dbc")
PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1906.dbc")
PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1907.dbc")
PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1908.dbc")
PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1909.dbc")
PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1910.dbc")
PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1911.dbc")
PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1912.dbc")

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1901.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1902.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1903.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1904.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1905.dbc")
PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1906.dbc")
PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1907.dbc")
PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1908.dbc")
PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1909.dbc")
PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1910.dbc")
PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1911.dbc")
PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1912.dbc")

###################
######
###################

AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_08, AC_APAC_med_09, AC_APAC_med_10, AC_APAC_med_11, AC_APAC_med_12))
AC_APAC_med$UF <- "AC"

AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10, AL_APAC_med_11 , AL_APAC_med_12))
AL_APAL_med$UF <- "AL"

AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10, AM_APAC_med_11, AM_APAC_med_12))
AM_APAL_med$UF <- "AM"

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_07, AP_APAC_med_08, AP_APAC_med_09, AP_APAC_med_10, AP_APAC_med_11, AP_APAC_med_12))
AP_APAL_med$UF <- "AP"

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10, BA_APAC_med_11, BA_APAC_med_12 ))
BA_APAL_med$UF <- "BA"

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10, CE_APAC_med_11, CE_APAC_med_12))
CE_APAL_med$UF <- "CE"

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10, DF_APAC_med_11, DF_APAC_med_12))
DF_APAL_med$UF <- "DF"

ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10, ES_APAC_med_11, ES_APAC_med_12))
ES_APAL_med$UF <- "ES" 

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10, GO_APAC_med_11, GO_APAC_med_12))
GO_APAL_med$UF <- "GO"

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10, MA_APAC_med_11, MA_APAC_med_12))
MA_APAL_med$UF <- "MA"

MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10, MG_APAC_med_11, MG_APAC_med_12))
MG_APAL_med$UF <- "MG" 

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10, MS_APAC_med_11, MS_APAC_med_12))
MS_APAL_med$UF <- "MS"

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10, MT_APAC_med_11, MT_APAC_med_12))
MT_APAL_med$UF <- "MT"

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10, PA_APAC_med_11, PA_APAC_med_12))
PA_APAL_med$UF <- "PA"

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10, PB_APAC_med_11, PB_APAC_med_12))
PB_APAL_med$UF <- "PB"

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07,PE_APAC_med_08, PE_APAC_med_09, PE_APAC_med_10, PE_APAC_med_11, PE_APAC_med_12))
PE_APAL_med$UF <- "PE"

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10, PI_APAC_med_11, PI_APAC_med_12))
PI_APAL_med$UF <- "PI"

BR_19_01_trat <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med))

BR_19_01_trat_CID_hepb <- filter(BR_19_01_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_19_01_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_01_trat_CID_hepb.csv")

###################
######
###################

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1901.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1902.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1903.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1904.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1905.dbc")
PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1906.dbc")
PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1907.dbc")
PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1908.dbc")
PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1909.dbc")
PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1910.dbc")
PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1911.dbc")
PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1912.dbc")

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1901.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1902.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1903.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1904.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1905.dbc")
RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1906.dbc")
RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1907.dbc")
RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1908.dbc")
RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1909.dbc")
RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1910.dbc")
RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1911.dbc")
RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1912.dbc")

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1901.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1902.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1903.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1904.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1905.dbc")
RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1906.dbc")
RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1907.dbc")
RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1908.dbc")
RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1909.dbc")
RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1910.dbc")
RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1911.dbc")
RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1912.dbc")

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1901.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1902.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1903.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1904.dbc")
RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1905.dbc")
RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1906.dbc")
RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1907.dbc")
RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1908.dbc")
RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1909.dbc")
RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1910.dbc")
RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1911.dbc")
RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1912.dbc")

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1901.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1902.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1903.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1904.dbc")
RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1905.dbc")
RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1906.dbc")
RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1907.dbc")
RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1908.dbc")
RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1909.dbc")
RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1910.dbc")
RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1911.dbc")
RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1912.dbc")

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1901.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1902.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1903.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1904.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1905.dbc")
RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1906.dbc")
RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1907.dbc")
RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1908.dbc")
RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1909.dbc")
RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1910.dbc")
RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1911.dbc")
RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1912.dbc")

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1901.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1902.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1903.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1904.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1905.dbc")
SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1906.dbc")
SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1907.dbc")
SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1908.dbc")
SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1909.dbc")
SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1910.dbc")
SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1911.dbc")
SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1912.dbc")

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1901.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1902.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1903.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1904.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1905.dbc")
SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1906.dbc")
SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1908.dbc")
SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1909.dbc")
SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1910.dbc")
SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1911.dbc")
SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1912.dbc")

#####################
##########
#####################

PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10, PR_APAC_med_11, PR_APAC_med_12 ))
PR_APAL_med$UF <- "PR"

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_07, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10, RJ_APAC_med_11, RJ_APAC_med_12 ))
RJ_APAL_med$UF <- "RJ"

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_10, RN_APAC_med_11, RN_APAC_med_12))
RN_APAL_med$UF <- "RN"

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08, RO_APAC_med_10, RO_APAC_med_12))
RO_APAL_med$UF <- "RO"

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08, RR_APAC_med_09, RR_APAC_med_10, RR_APAC_med_11 , RR_APAC_med_12 ))
RR_APAL_med$UF <- "RR"

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10, RS_APAC_med_11, RR_APAC_med_12))
RS_APAL_med$UF <- "RS"

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10, SC_APAC_med_11, SC_APAC_med_12 ))
SC_APAL_med$UF <- "SC"

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10, SE_APAC_med_11, SE_APAC_med_12))
SE_APAL_med$UF <- "SE"

BR_19_02_trat <- do.call("rbind", list(PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med))

BR_19_02_trat_CID_hepb <- filter(BR_19_02_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_19_02_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_02_trat_CID_hepb.csv")

#####################
##########
#####################

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1901.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1902.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1903.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1904.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1905.dbc")
SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1906.dbc")
SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1907.dbc")
SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1908.dbc")
SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1909.dbc")
SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1910.dbc")
SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1911.dbc")
SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1912.dbc")

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1901.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1902.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1903.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1904.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1905.dbc")
TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1906.dbc")
TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1907.dbc")
TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1908.dbc")
TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1909.dbc")
TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1910.dbc")
TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1911.dbc")
TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1912.dbc")

#####################
##########
#####################

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10, SP_APAC_med_11, SP_APAC_med_12))
SP_APAL_med$UF <- "SP"

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10, TO_APAC_med_11, TO_APAC_med_12))
TO_APAL_med$UF <- "TO"

BR_19_03_trat  <- do.call("rbind", list(SP_APAL_med, TO_APAL_med))

BR_19_03_trat_CID_hepb <- filter(BR_19_03_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_19_03_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_03_trat_CID_hepb.csv")

BR_19_01_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_01_trat_CID_hepb.csv")
BR_19_02_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_02_trat_CID_hepb.csv")
BR_19_03_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_19_03_trat_CID_hepb.csv")

BR_APAC_trat__hepb_2019 <- do.call("rbind", list( BR_19_01_trat_CID_hepb, BR_19_02_trat_CID_hepb, BR_19_03_trat_CID_hepb))

BR_APAC_trat__hepb_2019un <- distinct(BR_APAC_trat__hepb_2019, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_APAC_trat__hepb_2019, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2019.csv")
write.csv(BR_APAC_trat__hepb_2019un, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2019un.csv")

BR_APAC_trat__hepb_2019 <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2019.csv")

BR_APAC_trat__hepb_2019un <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2019un.csv")

#####################
##########
#####################


## 2018

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1801.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1802.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1803.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1804.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1805.dbc")
AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1806.dbc")
AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1807.dbc")
AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1808.dbc")
AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1809.dbc")
AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1810.dbc")
AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1811.dbc")
AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1812.dbc")

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1801.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1802.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1803.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1804.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1805.dbc")
AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1806.dbc")
AL_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1807.dbc")
AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1808.dbc")
AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1809.dbc")
AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1810.dbc")
AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1811.dbc")
AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1812.dbc")

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1801.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1802.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1803.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1804.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1805.dbc")
AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1806.dbc")
AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1807.dbc")
AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1808.dbc")
AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1809.dbc")
AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1810.dbc")
AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1811.dbc")
AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1812.dbc")

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1801.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1802.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1803.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1804.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1805.dbc")
AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1806.dbc")
AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1807.dbc")
AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1808.dbc")
AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1809.dbc")
AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1810.dbc")
AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1811.dbc")
AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1812.dbc")

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1801.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1802.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1803.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1804.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1805.dbc")
BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1806.dbc")
BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1807.dbc")
BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1808.dbc")
BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1809.dbc")
BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1810.dbc")
BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1811.dbc")
BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1812.dbc")

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1801.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1802.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1803.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1804.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1805.dbc")
CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1806.dbc")
CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1807.dbc")
CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1808.dbc")
CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1809.dbc")
CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1810.dbc")
CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1811.dbc")
CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1812.dbc")

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1801.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1802.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1803.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1804.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1805.dbc")
DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1806.dbc")
DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1807.dbc")
DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1808.dbc")
DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1809.dbc")
DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1810.dbc")
DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1811.dbc")
DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1812.dbc")

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1801.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1802.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1803.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1804.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1805.dbc")
ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1806.dbc")
ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1807.dbc")
ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1808.dbc")
ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1809.dbc")
ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1810.dbc")
ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1811.dbc")
ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1812.dbc")

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1801.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1802.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1803.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1804.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1805.dbc")
GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1806.dbc")
GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1807.dbc")
GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1808.dbc")
GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1809.dbc")
GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1810.dbc")
GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1811.dbc")
GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1812.dbc")

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1801.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1802.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1803.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1804.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1805.dbc")
MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1806.dbc")
MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1807.dbc")
MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1808.dbc")
MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1809.dbc")
MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1810.dbc")
MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1811.dbc")
MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1812.dbc")

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1801.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1802.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1803.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1804.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1805.dbc")
MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1806.dbc")
MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1807.dbc")
MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1808.dbc")
MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1809.dbc")
MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1810.dbc")
MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1811.dbc")
MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1812.dbc")

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1801.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1802.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1803.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1804.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1805.dbc")
MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1806.dbc")
MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1807.dbc")
MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1808.dbc")
MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1809.dbc")
MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1810.dbc")
MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1811.dbc")
MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1812.dbc")

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1801.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1802.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1803.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1804.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1805.dbc")
MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1806.dbc")
MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1807.dbc")
MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1808.dbc")
MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1809.dbc")
MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1810.dbc")
MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1811.dbc")
MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1812.dbc")

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1801.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1802.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1803.dbc")
PA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1804.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1805.dbc")
PA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1806.dbc")
PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1807.dbc")
PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1808.dbc")
PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1809.dbc")
PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1810.dbc")
PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1811.dbc")
PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1812.dbc")

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1801.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1802.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1803.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1804.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1805.dbc")
PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1806.dbc")
PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1807.dbc")
PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1808.dbc")
PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1809.dbc")
PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1810.dbc")
PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1811.dbc")
PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1812.dbc")

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1801.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1802.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1803.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1804.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1805.dbc")
PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1806.dbc")
PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1807.dbc")
PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1808.dbc")
PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1809.dbc")
PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1810.dbc")
PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1811.dbc")
PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1812.dbc")

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1801.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1802.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1803.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1804.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1805.dbc")
PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1806.dbc")
PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1807.dbc")
PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1808.dbc")
PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1809.dbc")
PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1810.dbc")
PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1811.dbc")
PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1812.dbc")

###################
######
###################

AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_09, AC_APAC_med_11, AC_APAC_med_12))
AC_APAC_med$UF <- "AC"

AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06,AL_APAC_med_07, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10, AL_APAC_med_11 , AL_APAC_med_12))
AL_APAL_med$UF <- "AL"

AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10, AM_APAC_med_11, AM_APAC_med_12))
AM_APAL_med$UF <- "AM"

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_07, AP_APAC_med_08, AP_APAC_med_09, AP_APAC_med_10, AP_APAC_med_11, AP_APAC_med_12))
AP_APAL_med$UF <- "AP"

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10, BA_APAC_med_11, BA_APAC_med_12 ))
BA_APAL_med$UF <- "BA"

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10, CE_APAC_med_11, CE_APAC_med_12))
CE_APAL_med$UF <- "CE"

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10, DF_APAC_med_11, DF_APAC_med_12))
DF_APAL_med$UF <- "DF"

ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10, ES_APAC_med_11, ES_APAC_med_12))
ES_APAL_med$UF <- "ES" 

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10, GO_APAC_med_11, GO_APAC_med_12))
GO_APAL_med$UF <- "GO"

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10, MA_APAC_med_11, MA_APAC_med_12))
MA_APAL_med$UF <- "MA"

MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10, MG_APAC_med_11, MG_APAC_med_12))
MG_APAL_med$UF <- "MG" 

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10, MS_APAC_med_11, MS_APAC_med_12))
MS_APAL_med$UF <- "MS"

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10, MT_APAC_med_11, MT_APAC_med_12))
MT_APAL_med$UF <- "MT"

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03,PA_APAC_med_04, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10, PA_APAC_med_11, PA_APAC_med_12))
PA_APAL_med$UF <- "PA"

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10, PB_APAC_med_11))
PB_APAL_med$UF <- "PB"

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07,PE_APAC_med_08, PE_APAC_med_09, PE_APAC_med_10, PE_APAC_med_11, PE_APAC_med_12))
PE_APAL_med$UF <- "PE"

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10, PI_APAC_med_11, PI_APAC_med_12))
PI_APAL_med$UF <- "PI"

BR_18_01_trat <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med))

BR_18_01_trat_CID_hepb <- filter(BR_18_01_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_18_01_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_01_trat_CID_hepb.csv")


###################
######
###################

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1801.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1802.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1803.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1804.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1805.dbc")
PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1806.dbc")
PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1807.dbc")
PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1808.dbc")
PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1809.dbc")
PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1810.dbc")
PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1811.dbc")
PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1812.dbc")

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1801.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1802.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1803.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1804.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1805.dbc")
RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1806.dbc")
RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1807.dbc")
RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1808.dbc")
RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1809.dbc")
RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1810.dbc")
RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1811.dbc")
RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1812.dbc")

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1801.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1802.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1803.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1804.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1805.dbc")
RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1806.dbc")
RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1807.dbc")
RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1808.dbc")
RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1809.dbc")
RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1810.dbc")
RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1811.dbc")
RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1812.dbc")

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1801.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1802.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1803.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1804.dbc")
RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1805.dbc")
RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1806.dbc")
RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1807.dbc")
RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1808.dbc")
RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1809.dbc")
RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1810.dbc")
RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1811.dbc")
RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1812.dbc")

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1801.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1802.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1803.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1804.dbc")
RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1805.dbc")
RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1806.dbc")
RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1807.dbc")
RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1808.dbc")
RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1809.dbc")
RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1810.dbc")
RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1811.dbc")
RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1812.dbc")

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1801.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1802.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1803.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1804.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1805.dbc")
RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1806.dbc")
RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1807.dbc")
RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1808.dbc")
RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1809.dbc")
RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1810.dbc")
RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1811.dbc")
RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1812.dbc")

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1801.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1802.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1803.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1804.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1805.dbc")
SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1806.dbc")
SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1807.dbc")
SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1808.dbc")
SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1809.dbc")
SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1810.dbc")
SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1811.dbc")
SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1812.dbc")

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1801.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1802.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1803.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1804.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1805.dbc")
SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1806.dbc")
SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1808.dbc")
SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1809.dbc")
SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1810.dbc")
SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1811.dbc")
SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1812.dbc")

#####################
##########
#####################

PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10, PR_APAC_med_11, PR_APAC_med_12 ))
PR_APAL_med$UF <- "PR"

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_07, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10, RJ_APAC_med_11, RJ_APAC_med_12 ))
RJ_APAL_med$UF <- "RJ"

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_10, RN_APAC_med_11, RN_APAC_med_12))
RN_APAL_med$UF <- "RN"

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08,RO_APAC_med_09, RO_APAC_med_10, RO_APAC_med_11, RO_APAC_med_12))
RO_APAL_med$UF <- "RO"

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08,RR_APAC_med_09, RR_APAC_med_10, RR_APAC_med_11, RR_APAC_med_12 ))
RR_APAL_med$UF <- "RR"

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10, RS_APAC_med_11, RS_APAC_med_12))
RS_APAL_med$UF <- "RS"

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10, SC_APAC_med_11, SC_APAC_med_12 ))
SC_APAL_med$UF <- "SC"

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10, SE_APAC_med_11, SE_APAC_med_12))
SE_APAL_med$UF <- "SE"

BR_18_02_trat <- do.call("rbind", list(PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med))

BR_18_02_trat_CID_hepb <- filter(BR_18_02_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_18_02_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_02_trat_CID_hepb.csv")

#####################
##########
#####################

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1801.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1802.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1803.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1804.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1805.dbc")
SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1806.dbc")
SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1807.dbc")
SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1808.dbc")
SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1809.dbc")
SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1810.dbc")
SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1811.dbc")
SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1812.dbc")

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1801.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1802.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1803.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1804.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1805.dbc")
TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1806.dbc")
TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1807.dbc")
TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1808.dbc")
TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1809.dbc")
TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1810.dbc")
TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1811.dbc")
TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1812.dbc")


#####################
##########
#####################

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10, SP_APAC_med_11, SP_APAC_med_12))
SP_APAL_med$UF <- "SP"

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10, TO_APAC_med_11, TO_APAC_med_12))
TO_APAL_med$UF <- "TO"

BR_18_03_trat  <- do.call("rbind", list(SP_APAL_med, TO_APAL_med))

BR_18_03_trat_CID_hepb <- filter(BR_18_03_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_18_03_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_03_trat_CID_hepb.csv")

BR_18_01_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_01_trat_CID_hepb.csv")
BR_18_02_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_02_trat_CID_hepb.csv")
BR_18_03_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_18_03_trat_CID_hepb.csv")

BR_APAC_trat__hepb_2018 <- do.call("rbind", list( BR_18_01_trat_CID_hepb, BR_18_02_trat_CID_hepb, BR_18_03_trat_CID_hepb))

BR_APAC_trat__hepb_2018un <- distinct(BR_APAC_trat__hepb_2018, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_APAC_trat__hepb_2018, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2018.csv")
write.csv(BR_APAC_trat__hepb_2018un, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2018un.csv")

BR_APAC_trat__hepb_2018 <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2018.csv")

BR_APAC_trat__hepb_2018un <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2018un.csv")

#####################
##########
#####################


## 2017

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1701.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1702.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1703.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1704.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1705.dbc")
AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1706.dbc")
AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1707.dbc")
AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1708.dbc")
AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1709.dbc")
AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1710.dbc")
AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1711.dbc")
AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1712.dbc")

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1701.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1702.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1703.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1704.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1705.dbc")
AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1706.dbc")
AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1708.dbc")
AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1709.dbc")
AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1710.dbc")
AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1711.dbc")
AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1712.dbc")

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1701.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1702.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1703.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1704.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1705.dbc")
AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1706.dbc")
AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1707.dbc")
AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1708.dbc")
AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1709.dbc")
AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1710.dbc")
AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1711.dbc")
AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1712.dbc")

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1701.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1702.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1703.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1704.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1705.dbc")
AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1706.dbc")
AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1707.dbc")
AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1708.dbc")
AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1709.dbc")
AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1710.dbc")
AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1711.dbc")
AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1712.dbc")

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1701.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1702.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1703.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1704.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1705.dbc")
BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1706.dbc")
BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1707.dbc")
BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1708.dbc")
BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1709.dbc")
BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1710.dbc")
BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1711.dbc")
BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1712.dbc")

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1701.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1702.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1703.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1704.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1705.dbc")
CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1706.dbc")
CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1707.dbc")
CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1708.dbc")
CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1709.dbc")
CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1710.dbc")
CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1711.dbc")
CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1712.dbc")

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1701.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1702.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1703.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1704.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1705.dbc")
DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1706.dbc")
DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1707.dbc")
DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1708.dbc")
DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1709.dbc")
DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1710.dbc")
DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1711.dbc")
DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1712.dbc")

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1701.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1702.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1703.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1704.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1705.dbc")
ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1706.dbc")
ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1707.dbc")
ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1708.dbc")
ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1709.dbc")
ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1710.dbc")
ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1711.dbc")
ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1712.dbc")

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1701.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1702.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1703.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1704.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1705.dbc")
GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1706.dbc")
GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1707.dbc")
GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1708.dbc")
GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1709.dbc")
GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1710.dbc")
GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1711.dbc")
GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1712.dbc")

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1701.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1702.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1703.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1704.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1705.dbc")
MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1706.dbc")
MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1707.dbc")
MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1708.dbc")
MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1709.dbc")
MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1710.dbc")
MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1711.dbc")
MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1712.dbc")

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1701.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1702.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1703.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1704.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1705.dbc")
MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1706.dbc")
MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1707.dbc")
MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1708.dbc")
MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1709.dbc")
MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1710.dbc")
MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1711.dbc")
MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1712.dbc")

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1701.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1702.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1703.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1704.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1705.dbc")
MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1706.dbc")
MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1707.dbc")
MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1708.dbc")
MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1709.dbc")
MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1710.dbc")
MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1711.dbc")
MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1712.dbc")

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1701.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1702.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1703.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1704.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1705.dbc")
MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1706.dbc")
MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1707.dbc")
MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1708.dbc")
MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1709.dbc")
MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1710.dbc")
MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1711.dbc")
MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1712.dbc")

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1701.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1702.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1703.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1705.dbc")
PA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1706.dbc")
PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1707.dbc")
PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1708.dbc")
PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1709.dbc")
PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1710.dbc")
PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1711.dbc")
PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1712.dbc")

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1701.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1702.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1703.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1704.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1705.dbc")
PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1706.dbc")
PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1707.dbc")
PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1708.dbc")
PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1709.dbc")
PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1710.dbc")
PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1711.dbc")
PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1712.dbc")

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1701.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1702.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1703.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1704.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1705.dbc")
PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1706.dbc")
PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1707.dbc")
PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1708.dbc")
PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1709.dbc")
PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1710.dbc")
PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1711.dbc")
PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1712.dbc")

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1701.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1702.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1703.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1704.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1705.dbc")
PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1706.dbc")
PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1707.dbc")
PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1708.dbc")
PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1709.dbc")
PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1710.dbc")
PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1711.dbc")
PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1712.dbc")

###################
######
###################


AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_08, AC_APAC_med_09, AC_APAC_med_10, AC_APAC_med_11, AC_APAC_med_12))
AC_APAC_med$UF <- "AC"

AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10, AL_APAC_med_11 , AL_APAC_med_12))
AL_APAL_med$UF <- "AL"

AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10, AM_APAC_med_11, AM_APAC_med_12))
AM_APAL_med$UF <- "AM"

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_08, AP_APAC_med_10, AP_APAC_med_11, AP_APAC_med_12))
AP_APAL_med$UF <- "AP"

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10, BA_APAC_med_11, BA_APAC_med_12 ))
BA_APAL_med$UF <- "BA"

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10, CE_APAC_med_11, CE_APAC_med_12))
CE_APAL_med$UF <- "CE"

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10, DF_APAC_med_11, DF_APAC_med_12))
DF_APAL_med$UF <- "DF"

ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10, ES_APAC_med_11, ES_APAC_med_12))
ES_APAL_med$UF <- "ES" 

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10, GO_APAC_med_11, GO_APAC_med_12))
GO_APAL_med$UF <- "GO"

MA_APAL_med <- do.call("rbind", list( MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10, MA_APAC_med_11, MA_APAC_med_12))
MA_APAL_med$UF <- "MA"

MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10, MG_APAC_med_11, MG_APAC_med_12))
MG_APAL_med$UF <- "MG" 

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10, MS_APAC_med_11, MS_APAC_med_12))
MS_APAL_med$UF <- "MS"

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10, MT_APAC_med_11, MT_APAC_med_12))
MT_APAL_med$UF <- "MT"

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10, PA_APAC_med_11, PA_APAC_med_12))
PA_APAL_med$UF <- "PA"

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10, PB_APAC_med_11, PB_APAC_med_12))
PB_APAL_med$UF <- "PB"

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07,PE_APAC_med_08, PE_APAC_med_09, PE_APAC_med_10, PE_APAC_med_11, PE_APAC_med_12))
PE_APAL_med$UF <- "PE"

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10, PI_APAC_med_11, PI_APAC_med_12))
PI_APAL_med$UF <- "PI"

BR_17_01_trat <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med))

BR_17_01_trat_CID_hepb <- filter(BR_17_01_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_17_01_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_01_trat_CID_hepb.csv")

###################
######
###################

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1701.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1702.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1703.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1704.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1705.dbc")
PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1706.dbc")
PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1707.dbc")
PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1708.dbc")
PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1709.dbc")
PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1710.dbc")
PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1711.dbc")
PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1712.dbc")

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1701.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1702.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1703.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1704.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1705.dbc")
RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1706.dbc")
RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1707.dbc")
RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1708.dbc")
RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1709.dbc")
RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1710.dbc")
RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1711.dbc")
RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1712.dbc")

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1701.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1702.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1703.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1704.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1705.dbc")
RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1706.dbc")
RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1707.dbc")
RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1708.dbc")
RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1709.dbc")
RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1710.dbc")
RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1711.dbc")
RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1712.dbc")

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1701.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1702.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1703.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1704.dbc")
RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1705.dbc")
RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1706.dbc")
RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1707.dbc")
RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1708.dbc")
RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1709.dbc")
RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1710.dbc")
RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1711.dbc")
RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1712.dbc")

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1701.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1702.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1703.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1704.dbc")
RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1705.dbc")
RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1706.dbc")
RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1707.dbc")
RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1708.dbc")
RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1709.dbc")
RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1710.dbc")
RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1711.dbc")
RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1712.dbc")

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1701.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1702.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1703.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1704.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1705.dbc")
RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1706.dbc")
RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1707.dbc")
RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1708.dbc")
RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1709.dbc")
RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1710.dbc")
RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1711.dbc")
RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1712.dbc")

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1701.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1702.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1703.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1704.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1705.dbc")
SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1706.dbc")
SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1707.dbc")
SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1708.dbc")
SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1709.dbc")
SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1710.dbc")
SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1711.dbc")
SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1712.dbc")

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1701.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1702.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1703.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1704.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1705.dbc")
SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1706.dbc")
SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1708.dbc")
SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1709.dbc")
SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1710.dbc")
SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1711.dbc")
SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1712.dbc")

#####################
##########
#####################


PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10, PR_APAC_med_11, PR_APAC_med_12 ))
PR_APAL_med$UF <- "PR"

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10, RJ_APAC_med_11, RJ_APAC_med_12 ))
RJ_APAL_med$UF <- "RJ"

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04, RN_APAC_med_05,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_10, RN_APAC_med_11, RN_APAC_med_12))
RN_APAL_med$UF <- "RN"

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_03, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08,RO_APAC_med_09, RO_APAC_med_10, RO_APAC_med_11, RO_APAC_med_12))
RO_APAL_med$UF <- "RO"

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08,RR_APAC_med_09, RR_APAC_med_10, RR_APAC_med_11, RR_APAC_med_12 ))
RR_APAL_med$UF <- "RR"

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_01, RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10, RS_APAC_med_11, RS_APAC_med_12))
RS_APAL_med$UF <- "RS"

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10, SC_APAC_med_11, SC_APAC_med_12 ))
SC_APAL_med$UF <- "SC"

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10, SE_APAC_med_11, SE_APAC_med_12))
SE_APAL_med$UF <- "SE"

BR_17_02_trat <- do.call("rbind", list(PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med))

BR_17_02_trat_CID_hepb <- filter(BR_17_02_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_17_02_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_02_trat_CID_hepb.csv")

#####################
##########
#####################

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1701.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1702.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1703.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1704.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1705.dbc")
SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1706.dbc")
SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1707.dbc")
SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1708.dbc")
SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1709.dbc")
SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1710.dbc")
SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1711.dbc")
SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1712.dbc")

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1701.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1702.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1703.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1704.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1705.dbc")
TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1706.dbc")
TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1707.dbc")
TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1708.dbc")
TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1709.dbc")
TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1710.dbc")
TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1711.dbc")
TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1712.dbc")

#####################
##########
#####################

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10, SP_APAC_med_11, SP_APAC_med_12))
SP_APAL_med$UF <- "SP"

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10, TO_APAC_med_11, TO_APAC_med_12))
TO_APAL_med$UF <- "TO"

BR_17_03_trat  <- do.call("rbind", list(SP_APAL_med, TO_APAL_med))

BR_17_03_trat_CID_hepb <- filter(BR_17_03_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_17_03_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_03_trat_CID_hepb.csv")

BR_17_01_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_01_trat_CID_hepb.csv")
BR_17_02_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_02_trat_CID_hepb.csv")
BR_17_03_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_17_03_trat_CID_hepb.csv")

BR_APAC_trat__hepb_2017 <- do.call("rbind", list( BR_17_01_trat_CID_hepb, BR_17_02_trat_CID_hepb, BR_17_03_trat_CID_hepb))

BR_APAC_trat__hepb_2017un <- distinct(BR_APAC_trat__hepb_2017, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_APAC_trat__hepb_2017, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2017.csv")
write.csv(BR_APAC_trat__hepb_2017un, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2017un.csv")

BR_APAC_trat__hepb_2017<- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2017.csv")

BR_APAC_trat__hepb_2017un <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2017un.csv")

#####################
##########
#####################


## 2016

AC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1601.dbc")
AC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1602.dbc")
AC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1603.dbc")
AC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1604.dbc")
AC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1605.dbc")
AC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1606.dbc")
AC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1607.dbc")
AC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1608.dbc")
AC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1609.dbc")
AC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1610.dbc")
AC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1611.dbc")
AC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AC_APAC_med/AMAC1612.dbc")

AL_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1601.dbc")
AL_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1602.dbc")
AL_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1603.dbc")
AL_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1604.dbc")
AL_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1605.dbc")
AL_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1606.dbc")
AL_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1608.dbc")
AL_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1609.dbc")
AL_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1610.dbc")
AL_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1611.dbc")
AL_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AL_APAC_med/AMAL1612.dbc")

AM_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1601.dbc")
AM_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1602.dbc")
AM_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1603.dbc")
AM_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1604.dbc")
AM_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1605.dbc")
AM_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1606.dbc")
AM_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1607.dbc")
AM_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1608.dbc")
AM_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1609.dbc")
AM_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1610.dbc")
AM_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1611.dbc")
AM_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/AM_APAC_med/AMAM1612.dbc")

AP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1601.dbc")
AP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1602.dbc")
AP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1603.dbc")
AP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1604.dbc")
AP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1605.dbc")
AP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1606.dbc")
AP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1607.dbc")
AP_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1608.dbc")
AP_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1609.dbc")
AP_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1610.dbc")
AP_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1611.dbc")
AP_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/AP_APAC_med/AMAP1612.dbc")

BA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1601.dbc")
BA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1602.dbc")
BA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1603.dbc")
BA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1604.dbc")
BA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1605.dbc")
BA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1606.dbc")
BA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1607.dbc")
BA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1608.dbc")
BA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1609.dbc")
BA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1610.dbc")
BA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1611.dbc")
BA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/BA_APAC_med/AMBA1612.dbc")

CE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1601.dbc")
CE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1602.dbc")
CE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1603.dbc")
CE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1604.dbc")
CE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1605.dbc")
CE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1606.dbc")
CE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1607.dbc")
CE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1608.dbc")
CE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1609.dbc")
CE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1610.dbc")
CE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1611.dbc")
CE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/CE_APAC_med/AMCE1612.dbc")

DF_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1601.dbc")
DF_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1602.dbc")
DF_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1603.dbc")
DF_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1604.dbc")
DF_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1605.dbc")
DF_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1606.dbc")
DF_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1607.dbc")
DF_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1608.dbc")
DF_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1609.dbc")
DF_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1610.dbc")
DF_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1611.dbc")
DF_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/DF_APAC_med/AMDF1612.dbc")

ES_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1601.dbc")
ES_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1602.dbc")
ES_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1603.dbc")
ES_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1604.dbc")
ES_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1605.dbc")
ES_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1606.dbc")
ES_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1607.dbc")
ES_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1608.dbc")
ES_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1609.dbc")
ES_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1610.dbc")
ES_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1611.dbc")
ES_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/ES_APAC_med/AMES1612.dbc")

GO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1601.dbc")
GO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1602.dbc")
GO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1603.dbc")
GO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1604.dbc")
GO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1605.dbc")
GO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1606.dbc")
GO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1607.dbc")
GO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1608.dbc")
GO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1609.dbc")
GO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1610.dbc")
GO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1611.dbc")
GO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/GO_APAC_med/AMGO1612.dbc")

MA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1601.dbc")
MA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1602.dbc")
MA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1603.dbc")
MA_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1604.dbc")
MA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1605.dbc")
MA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1606.dbc")
MA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1607.dbc")
MA_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1608.dbc")
MA_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1609.dbc")
MA_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1610.dbc")
MA_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1611.dbc")
MA_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MA_APAC_med/AMMA1612.dbc")

MG_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1601.dbc")
MG_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1602.dbc")
MG_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1603.dbc")
MG_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1604.dbc")
MG_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1605.dbc")
MG_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1606.dbc")
MG_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1607.dbc")
MG_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1608.dbc")
MG_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1609.dbc")
MG_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1610.dbc")
MG_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1611.dbc")
MG_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MG_APAC_med/AMMG1612.dbc")

MS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1601.dbc")
MS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1602.dbc")
MS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1603.dbc")
MS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1604.dbc")
MS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1605.dbc")
MS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1606.dbc")
MS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1607.dbc")
MS_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1608.dbc")
MS_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1609.dbc")
MS_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1610.dbc")
MS_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1611.dbc")
MS_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/MS_APAC_med/AMMS1612.dbc")

MT_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1601.dbc")
MT_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1602.dbc")
MT_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1603.dbc")
MT_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1604.dbc")
MT_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1605.dbc")
MT_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1606.dbc")
MT_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1607.dbc")
MT_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1608.dbc")
MT_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1609.dbc")
MT_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1610.dbc")
MT_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1611.dbc")
MT_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/MT_APAC_med/AMMT1612.dbc")

PA_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1601.dbc")
PA_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1602.dbc")
PA_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1603.dbc")
PA_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1605.dbc")
PA_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1606.dbc")
PA_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1607.dbc")
PA_APAC_med_08 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1608.dbc")
PA_APAC_med_09 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1609.dbc")
PA_APAC_med_10 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1610.dbc")
PA_APAC_med_11 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1611.dbc")
PA_APAC_med_12 <-read.dbc("C:/Users/lemos/Downloads/PA_APAC_med/AMPA1612.dbc")

PB_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1601.dbc")
PB_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1602.dbc")
PB_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1603.dbc")
PB_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1604.dbc")
PB_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1605.dbc")
PB_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1606.dbc")
PB_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1607.dbc")
PB_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1608.dbc")
PB_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1609.dbc")
PB_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1610.dbc")
PB_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1611.dbc")
PB_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PB_APAC_med/AMPB1612.dbc")

PE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1601.dbc")
PE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1602.dbc")
PE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1603.dbc")
PE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1604.dbc")
PE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1605.dbc")
PE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1606.dbc")
PE_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1607.dbc")
PE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1608.dbc")
PE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1609.dbc")
PE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1610.dbc")
PE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1611.dbc")
PE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PE_APAC_med/AMPE1612.dbc")

PI_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1601.dbc")
PI_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1602.dbc")
PI_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1603.dbc")
PI_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1604.dbc")
PI_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1605.dbc")
PI_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1606.dbc")
PI_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1607.dbc")
PI_APAC_med_08  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1608.dbc")
PI_APAC_med_09  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1609.dbc")
PI_APAC_med_10  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1610.dbc")
PI_APAC_med_11  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1611.dbc")
PI_APAC_med_12  <- read.dbc("C:/Users/lemos/Downloads/PI_APAC_med/AMPI1612.dbc")

###################
######
###################

AC_APAC_med_01$AP_NATJUR <- 1023
AC_APAC_med_02$AP_NATJUR <- 1023
AC_APAC_med_03$AP_NATJUR <- 1023
AC_APAC_med_04$AP_NATJUR <- 1023
AC_APAC_med_05$AP_NATJUR <- 1023
AC_APAC_med_06$AP_NATJUR <- 1023

AC_APAC_med <- do.call("rbind", list(AC_APAC_med_01, AC_APAC_med_02, AC_APAC_med_03, AC_APAC_med_04, AC_APAC_med_05,AC_APAC_med_06, AC_APAC_med_07, AC_APAC_med_08, AC_APAC_med_09, AC_APAC_med_10, AC_APAC_med_11, AC_APAC_med_12))
AC_APAC_med$UF <- "AC"

AL_APAC_med_01$AP_NATJUR <- 1023
AL_APAC_med_02$AP_NATJUR <- 1023
AL_APAC_med_03$AP_NATJUR <- 1023
AL_APAC_med_04$AP_NATJUR <- 1023
AL_APAC_med_05$AP_NATJUR <- 1023
AL_APAC_med_06$AP_NATJUR <- 1023

AL_APAL_med <- do.call("rbind", list(AL_APAC_med_01, AL_APAC_med_02, AL_APAC_med_03, AL_APAC_med_04, AL_APAC_med_05,AL_APAC_med_06, AL_APAC_med_08,AL_APAC_med_09, AL_APAC_med_10, AL_APAC_med_11 , AL_APAC_med_12))
AL_APAL_med$UF <- "AL"

AM_APAC_med_01$AP_NATJUR <- 1023
AM_APAC_med_02$AP_NATJUR <- 1023
AM_APAC_med_03$AP_NATJUR <- 1023
AM_APAC_med_04$AP_NATJUR <- 1023
AM_APAC_med_05$AP_NATJUR <- 1023
AM_APAC_med_06$AP_NATJUR <- 1023

AM_APAL_med <- do.call("rbind", list(AM_APAC_med_01, AM_APAC_med_02, AM_APAC_med_03, AM_APAC_med_04, AM_APAC_med_05,AM_APAC_med_06, AM_APAC_med_07, AM_APAC_med_08, AM_APAC_med_09, AM_APAC_med_10, AM_APAC_med_11, AM_APAC_med_12))
AM_APAL_med$UF <- "AM"

AP_APAC_med_01$AP_NATJUR <- 1023
AP_APAC_med_02$AP_NATJUR <- 1023
AP_APAC_med_03$AP_NATJUR <- 1023
AP_APAC_med_04$AP_NATJUR <- 1023
AP_APAC_med_05$AP_NATJUR <- 1023
AP_APAC_med_06$AP_NATJUR <- 1023

AP_APAL_med <- do.call("rbind", list(AP_APAC_med_01, AP_APAC_med_02, AP_APAC_med_03, AP_APAC_med_04, AP_APAC_med_05,AP_APAC_med_06, AP_APAC_med_07, AP_APAC_med_08, AP_APAC_med_09, AP_APAC_med_10, AP_APAC_med_11, AP_APAC_med_12))
AP_APAL_med$UF <- "AP"

BA_APAC_med_01$AP_NATJUR <- 1023
BA_APAC_med_02$AP_NATJUR <- 1023
BA_APAC_med_03$AP_NATJUR <- 1023
BA_APAC_med_04$AP_NATJUR <- 1023
BA_APAC_med_05$AP_NATJUR <- 1023
BA_APAC_med_06$AP_NATJUR <- 1023

BA_APAL_med <- do.call("rbind", list(BA_APAC_med_01, BA_APAC_med_02, BA_APAC_med_03, BA_APAC_med_04, BA_APAC_med_05,BA_APAC_med_06, BA_APAC_med_07, BA_APAC_med_08,BA_APAC_med_09, BA_APAC_med_10, BA_APAC_med_11, BA_APAC_med_12 ))
BA_APAL_med$UF <- "BA"

CE_APAC_med_01$AP_NATJUR <- 1023
CE_APAC_med_02$AP_NATJUR <- 1023
CE_APAC_med_03$AP_NATJUR <- 1023
CE_APAC_med_04$AP_NATJUR <- 1023
CE_APAC_med_05$AP_NATJUR <- 1023
CE_APAC_med_06$AP_NATJUR <- 1023

CE_APAL_med <- do.call("rbind", list(CE_APAC_med_01, CE_APAC_med_02, CE_APAC_med_03, CE_APAC_med_04, CE_APAC_med_05,CE_APAC_med_06, CE_APAC_med_07, CE_APAC_med_08, CE_APAC_med_09, CE_APAC_med_10, CE_APAC_med_11, CE_APAC_med_12))
CE_APAL_med$UF <- "CE"

DF_APAC_med_01$AP_NATJUR <- 1023
DF_APAC_med_02$AP_NATJUR <- 1023
DF_APAC_med_03$AP_NATJUR <- 1023
DF_APAC_med_04$AP_NATJUR <- 1023
DF_APAC_med_05$AP_NATJUR <- 1023
DF_APAC_med_06$AP_NATJUR <- 1023

DF_APAL_med <- do.call("rbind", list(DF_APAC_med_01, DF_APAC_med_02, DF_APAC_med_03, DF_APAC_med_04, DF_APAC_med_05,DF_APAC_med_06, DF_APAC_med_07, DF_APAC_med_08, DF_APAC_med_09, DF_APAC_med_10, DF_APAC_med_11, DF_APAC_med_12))
DF_APAL_med$UF <- "DF"

ES_APAC_med_01$AP_NATJUR <- 1023
ES_APAC_med_02$AP_NATJUR <- 1023
ES_APAC_med_03$AP_NATJUR <- 1023
ES_APAC_med_04$AP_NATJUR <- 1023
ES_APAC_med_05$AP_NATJUR <- 1023
ES_APAC_med_06$AP_NATJUR <- 1023

ES_APAL_med <- do.call("rbind", list(ES_APAC_med_01, ES_APAC_med_02, ES_APAC_med_03, ES_APAC_med_04, ES_APAC_med_05,ES_APAC_med_06, ES_APAC_med_07, ES_APAC_med_08, ES_APAC_med_09, ES_APAC_med_10, ES_APAC_med_11, ES_APAC_med_12))
ES_APAL_med$UF <- "ES" 

GO_APAC_med_01$AP_NATJUR <- 1023
GO_APAC_med_02$AP_NATJUR <- 1023
GO_APAC_med_03$AP_NATJUR <- 1023
GO_APAC_med_04$AP_NATJUR <- 1023
GO_APAC_med_05$AP_NATJUR <- 1023
GO_APAC_med_06$AP_NATJUR <- 1023

GO_APAL_med <- do.call("rbind", list(GO_APAC_med_01, GO_APAC_med_02, GO_APAC_med_03, GO_APAC_med_04, GO_APAC_med_05,GO_APAC_med_06, GO_APAC_med_07, GO_APAC_med_08, GO_APAC_med_09, GO_APAC_med_10, GO_APAC_med_11, GO_APAC_med_12))
GO_APAL_med$UF <- "GO"

MA_APAC_med_01$AP_NATJUR <- 1023
MA_APAC_med_02$AP_NATJUR <- 1023
MA_APAC_med_03$AP_NATJUR <- 1023
MA_APAC_med_04$AP_NATJUR <- 1023
MA_APAC_med_05$AP_NATJUR <- 1023
MA_APAC_med_06$AP_NATJUR <- 1023

MA_APAL_med <- do.call("rbind", list(MA_APAC_med_01, MA_APAC_med_02, MA_APAC_med_03, MA_APAC_med_04, MA_APAC_med_05,MA_APAC_med_06, MA_APAC_med_07, MA_APAC_med_08, MA_APAC_med_09, MA_APAC_med_10, MA_APAC_med_11, MA_APAC_med_12))
MA_APAL_med$UF <- "MA"

MG_APAC_med_01$AP_NATJUR <- 1023
MG_APAC_med_02$AP_NATJUR <- 1023
MG_APAC_med_03$AP_NATJUR <- 1023
MG_APAC_med_04$AP_NATJUR <- 1023
MG_APAC_med_05$AP_NATJUR <- 1023
MG_APAC_med_06$AP_NATJUR <- 1023

MG_APAL_med <- do.call("rbind", list(MG_APAC_med_01, MG_APAC_med_02, MG_APAC_med_03, MG_APAC_med_04, MG_APAC_med_05,MG_APAC_med_06, MG_APAC_med_07, MG_APAC_med_08, MG_APAC_med_09, MG_APAC_med_10, MG_APAC_med_11, MG_APAC_med_12))
MG_APAL_med$UF <- "MG" 

MS_APAC_med_01$AP_NATJUR <- 1023
MS_APAC_med_02$AP_NATJUR <- 1023
MS_APAC_med_03$AP_NATJUR <- 1023
MS_APAC_med_04$AP_NATJUR <- 1023
MS_APAC_med_05$AP_NATJUR <- 1023
MS_APAC_med_06$AP_NATJUR <- 1023

MS_APAL_med <- do.call("rbind", list(MS_APAC_med_01, MS_APAC_med_02, MS_APAC_med_03, MS_APAC_med_04, MS_APAC_med_05,MS_APAC_med_06, MS_APAC_med_07, MS_APAC_med_08, MS_APAC_med_09, MS_APAC_med_10, MS_APAC_med_11, MS_APAC_med_12))
MS_APAL_med$UF <- "MS"

MT_APAC_med_01$AP_NATJUR <- 1023
MT_APAC_med_02$AP_NATJUR <- 1023
MT_APAC_med_03$AP_NATJUR <- 1023
MT_APAC_med_04$AP_NATJUR <- 1023
MT_APAC_med_05$AP_NATJUR <- 1023
MT_APAC_med_06$AP_NATJUR <- 1023

MT_APAL_med <- do.call("rbind", list(MT_APAC_med_01, MT_APAC_med_02, MT_APAC_med_03, MT_APAC_med_04, MT_APAC_med_05,MT_APAC_med_06, MT_APAC_med_07, MT_APAC_med_08, MT_APAC_med_09, MT_APAC_med_10, MT_APAC_med_11, MT_APAC_med_12))
MT_APAL_med$UF <- "MT"

PA_APAC_med_01$AP_NATJUR <- 1023
PA_APAC_med_02$AP_NATJUR <- 1023
PA_APAC_med_03$AP_NATJUR <- 1023
PA_APAC_med_04$AP_NATJUR <- 1023
PA_APAC_med_05$AP_NATJUR <- 1023
PA_APAC_med_06$AP_NATJUR <- 1023

PA_APAL_med <- do.call("rbind", list(PA_APAC_med_01, PA_APAC_med_02, PA_APAC_med_03, PA_APAC_med_05,PA_APAC_med_06, PA_APAC_med_07, PA_APAC_med_08, PA_APAC_med_09, PA_APAC_med_10, PA_APAC_med_11, PA_APAC_med_12))
PA_APAL_med$UF <- "PA"

PB_APAC_med_01$AP_NATJUR <- 1023
PB_APAC_med_02$AP_NATJUR <- 1023
PB_APAC_med_03$AP_NATJUR <- 1023
PB_APAC_med_04$AP_NATJUR <- 1023
PB_APAC_med_05$AP_NATJUR <- 1023
PB_APAC_med_06$AP_NATJUR <- 1023

PB_APAL_med <- do.call("rbind", list(PB_APAC_med_01, PB_APAC_med_02, PB_APAC_med_03, PB_APAC_med_04, PB_APAC_med_05,PB_APAC_med_06, PB_APAC_med_07, PB_APAC_med_08, PB_APAC_med_09, PB_APAC_med_10, PB_APAC_med_11, PB_APAC_med_12))
PB_APAL_med$UF <- "PB"

PE_APAC_med_01$AP_NATJUR <- 1023
PE_APAC_med_02$AP_NATJUR <- 1023
PE_APAC_med_03$AP_NATJUR <- 1023
PE_APAC_med_04$AP_NATJUR <- 1023
PE_APAC_med_05$AP_NATJUR <- 1023
PE_APAC_med_06$AP_NATJUR <- 1023

PE_APAL_med <- do.call("rbind", list(PE_APAC_med_01, PE_APAC_med_02, PE_APAC_med_03, PE_APAC_med_04, PE_APAC_med_05,PE_APAC_med_06, PE_APAC_med_07,PE_APAC_med_08, PE_APAC_med_09, PE_APAC_med_10, PE_APAC_med_11, PE_APAC_med_12))
PE_APAL_med$UF <- "PE"

PI_APAC_med_01$AP_NATJUR <- 1023
PI_APAC_med_02$AP_NATJUR <- 1023
PI_APAC_med_03$AP_NATJUR <- 1023
PI_APAC_med_04$AP_NATJUR <- 1023
PI_APAC_med_05$AP_NATJUR <- 1023
PI_APAC_med_06$AP_NATJUR <- 1023

PI_APAL_med <- do.call("rbind", list(PI_APAC_med_01, PI_APAC_med_02, PI_APAC_med_03, PI_APAC_med_04, PI_APAC_med_05,PI_APAC_med_06, PI_APAC_med_07, PI_APAC_med_08, PI_APAC_med_09, PI_APAC_med_10, PI_APAC_med_11, PI_APAC_med_12))
PI_APAL_med$UF <- "PI"

BR_16_01_trat <- do.call("rbind", list(AC_APAC_med, AP_APAL_med, AM_APAL_med, AL_APAL_med, BA_APAL_med, CE_APAL_med, DF_APAL_med, ES_APAL_med, GO_APAL_med, MA_APAL_med, MG_APAL_med, MS_APAL_med, MT_APAL_med, PA_APAL_med, PB_APAL_med, PE_APAL_med, PI_APAL_med))

BR_16_01_trat_CID_hepb <- filter(BR_16_01_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_16_01_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_01_trat_CID_hepb.csv")

###################
######
###################

PR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1601.dbc")
PR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1602.dbc")
PR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1603.dbc")
PR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1604.dbc")
PR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1605.dbc")
PR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1606.dbc")
PR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1607.dbc")
PR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1608.dbc")
PR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1609.dbc")
PR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1610.dbc")
PR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1611.dbc")
PR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/PR_APAC_med/AMPR1612.dbc")

RJ_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1601.dbc")
RJ_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1602.dbc")
RJ_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1603.dbc")
RJ_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1604.dbc")
RJ_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1605.dbc")
RJ_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1606.dbc")
RJ_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1607.dbc")
RJ_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1608.dbc")
RJ_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1609.dbc")
RJ_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1610.dbc")
RJ_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1611.dbc")
RJ_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RJ_APAC_med/AMRJ1612.dbc")

RN_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1601.dbc")
RN_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1602.dbc")
RN_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1603.dbc")
RN_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1604.dbc")
RN_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1605.dbc")
RN_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1606.dbc")
RN_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1607.dbc")
RN_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1608.dbc")
RN_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1609.dbc")
RN_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1610.dbc")
RN_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1611.dbc")
RN_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RN_APAC_med/AMRN1612.dbc")

RO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1601.dbc")
RO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1602.dbc")
RO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1603.dbc")
RO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1604.dbc")
RO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1605.dbc")
RO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1606.dbc")
RO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1607.dbc")
RO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1608.dbc")
RO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1609.dbc")
RO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1610.dbc")
RO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1611.dbc")
RO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RO_APAC_med/AMRO1612.dbc")

RR_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1601.dbc")
RR_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1602.dbc")
RR_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1603.dbc")
RR_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1604.dbc")
RR_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1605.dbc")
RR_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1606.dbc")
RR_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1607.dbc")
RR_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1608.dbc")
RR_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1609.dbc")
RR_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1610.dbc")
RR_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1611.dbc")
RR_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RR_APAC_med/AMRR1612.dbc")

RS_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1601.dbc")
RS_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1602.dbc")
RS_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1603.dbc")
RS_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1604.dbc")
RS_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1605.dbc")
RS_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1606.dbc")
RS_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1607.dbc")
RS_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1608.dbc")
RS_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1609.dbc")
RS_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1610.dbc")
RS_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1611.dbc")
RS_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/RS_APAC_med/AMRS1612.dbc")

SC_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1601.dbc")
SC_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1602.dbc")
SC_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1603.dbc")
SC_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1604.dbc")
SC_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1605.dbc")
SC_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1606.dbc")
SC_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1607.dbc")
SC_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1608.dbc")
SC_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1609.dbc")
SC_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1610.dbc")
SC_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1611.dbc")
SC_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SC_APAC_med/AMSC1612.dbc")

SE_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1601.dbc")
SE_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1602.dbc")
SE_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1603.dbc")
SE_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1604.dbc")
SE_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1605.dbc")
SE_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1606.dbc")
SE_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1608.dbc")
SE_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1609.dbc")
SE_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1610.dbc")
SE_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1611.dbc")
SE_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SE_APAC_med/AMSE1612.dbc")

#####################
##########
#####################

PR_APAC_med_01$AP_NATJUR <- 1023
PR_APAC_med_02$AP_NATJUR <- 1023
PR_APAC_med_03$AP_NATJUR <- 1023
PR_APAC_med_04$AP_NATJUR <- 1023
PR_APAC_med_05$AP_NATJUR <- 1023
PR_APAC_med_06$AP_NATJUR <- 1023

PR_APAL_med <- do.call("rbind", list(PR_APAC_med_01, PR_APAC_med_02, PR_APAC_med_03, PR_APAC_med_04, PR_APAC_med_05,PR_APAC_med_06, PR_APAC_med_07, PR_APAC_med_08, PR_APAC_med_09, PR_APAC_med_10, PR_APAC_med_11, PR_APAC_med_12 ))
PR_APAL_med$UF <- "PR"

RJ_APAC_med_01$AP_NATJUR <- 1023
RJ_APAC_med_02$AP_NATJUR <- 1023
RJ_APAC_med_03$AP_NATJUR <- 1023
RJ_APAC_med_04$AP_NATJUR <- 1023
RJ_APAC_med_05$AP_NATJUR <- 1023
RJ_APAC_med_06$AP_NATJUR <- 1023

RJ_APAL_med <- do.call("rbind", list(RJ_APAC_med_01, RJ_APAC_med_02, RJ_APAC_med_03, RJ_APAC_med_04, RJ_APAC_med_05,RJ_APAC_med_06, RJ_APAC_med_07, RJ_APAC_med_08,RJ_APAC_med_09, RJ_APAC_med_10, RJ_APAC_med_11, RJ_APAC_med_12 ))
RJ_APAL_med$UF <- "RJ"

RN_APAC_med_01$AP_NATJUR <- 1023
RN_APAC_med_02$AP_NATJUR <- 1023
RN_APAC_med_03$AP_NATJUR <- 1023
RN_APAC_med_04$AP_NATJUR <- 1023
RN_APAC_med_06$AP_NATJUR <- 1023

RN_APAL_med <- do.call("rbind", list(RN_APAC_med_01, RN_APAC_med_02, RN_APAC_med_03, RN_APAC_med_04,RN_APAC_med_06, RN_APAC_med_07, RN_APAC_med_08, RN_APAC_med_09, RN_APAC_med_11, RN_APAC_med_12))
RN_APAL_med$UF <- "RN"

RO_APAC_med_01$AP_NATJUR <- 1023
RO_APAC_med_02$AP_NATJUR <- 1023
RO_APAC_med_03$AP_NATJUR <- 1023
RO_APAC_med_04$AP_NATJUR <- 1023
RO_APAC_med_05$AP_NATJUR <- 1023
RO_APAC_med_06$AP_NATJUR <- 1023

RO_APAL_med <- do.call("rbind", list(RO_APAC_med_01, RO_APAC_med_02, RO_APAC_med_04, RO_APAC_med_05,RO_APAC_med_06, RO_APAC_med_07, RO_APAC_med_08,RO_APAC_med_09, RO_APAC_med_10, RO_APAC_med_11, RO_APAC_med_12))
RO_APAL_med$UF <- "RO"

RR_APAC_med_01$AP_NATJUR <- 1023
RR_APAC_med_02$AP_NATJUR <- 1023
RR_APAC_med_03$AP_NATJUR <- 1023
RR_APAC_med_04$AP_NATJUR <- 1023
RR_APAC_med_05$AP_NATJUR <- 1023
RR_APAC_med_06$AP_NATJUR <- 1023

RR_APAL_med <- do.call("rbind", list(RR_APAC_med_01, RR_APAC_med_02, RR_APAC_med_03, RR_APAC_med_04, RR_APAC_med_05,RR_APAC_med_06, RR_APAC_med_07, RR_APAC_med_08,RR_APAC_med_09, RR_APAC_med_10, RR_APAC_med_11, RR_APAC_med_12 ))
RR_APAL_med$UF <- "RR"

RS_APAC_med_01$AP_NATJUR <- 1023
RS_APAC_med_02$AP_NATJUR <- 1023
RS_APAC_med_03$AP_NATJUR <- 1023
RS_APAC_med_04$AP_NATJUR <- 1023
RS_APAC_med_05$AP_NATJUR <- 1023
RS_APAC_med_06$AP_NATJUR <- 1023

RS_APAL_med <- do.call("rbind", list(RS_APAC_med_02, RS_APAC_med_03, RS_APAC_med_04, RS_APAC_med_05,RS_APAC_med_06, RS_APAC_med_07, RS_APAC_med_08, RS_APAC_med_09, RS_APAC_med_10, RS_APAC_med_11, RS_APAC_med_12))
RS_APAL_med$UF <- "RS"

SC_APAC_med_01$AP_NATJUR <- 1023
SC_APAC_med_02$AP_NATJUR <- 1023
SC_APAC_med_03$AP_NATJUR <- 1023
SC_APAC_med_04$AP_NATJUR <- 1023
SC_APAC_med_05$AP_NATJUR <- 1023
SC_APAC_med_06$AP_NATJUR <- 1023

SC_APAL_med <- do.call("rbind", list(SC_APAC_med_01, SC_APAC_med_02, SC_APAC_med_03, SC_APAC_med_04, SC_APAC_med_05,SC_APAC_med_06, SC_APAC_med_07, SC_APAC_med_08,SC_APAC_med_09, SC_APAC_med_10, SC_APAC_med_11, SC_APAC_med_12 ))
SC_APAL_med$UF <- "SC"

SE_APAC_med_01$AP_NATJUR <- 1023
SE_APAC_med_02$AP_NATJUR <- 1023
SE_APAC_med_03$AP_NATJUR <- 1023
SE_APAC_med_04$AP_NATJUR <- 1023
SE_APAC_med_05$AP_NATJUR <- 1023
SE_APAC_med_06$AP_NATJUR <- 1023

SE_APAL_med <- do.call("rbind", list(SE_APAC_med_01, SE_APAC_med_02, SE_APAC_med_03, SE_APAC_med_04, SE_APAC_med_05,SE_APAC_med_06, SE_APAC_med_08, SE_APAC_med_09, SE_APAC_med_10, SE_APAC_med_11, SE_APAC_med_12))
SE_APAL_med$UF <- "SE"

BR_16_02_trat <- do.call("rbind", list(PR_APAL_med, RJ_APAL_med, RN_APAL_med, RO_APAL_med, RR_APAL_med, RS_APAL_med, SC_APAL_med, SE_APAL_med))

BR_16_02_trat_CID_hepb <- filter(BR_16_02_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_16_02_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_02_trat_CID_hepb.csv")

#####################
##########
#####################

SP_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1601.dbc")
SP_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1602.dbc")
SP_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1603.dbc")
SP_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1604.dbc")
SP_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1605.dbc")
SP_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1606.dbc")
SP_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1607.dbc")
SP_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1608.dbc")
SP_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1609.dbc")
SP_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1610.dbc")
SP_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1611.dbc")
SP_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/SP_APAC_med/AMSP1612.dbc")

TO_APAC_med_01 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1601.dbc")
TO_APAC_med_02 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1602.dbc")
TO_APAC_med_03 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1603.dbc")
TO_APAC_med_04 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1604.dbc")
TO_APAC_med_05 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1605.dbc")
TO_APAC_med_06 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1606.dbc")
TO_APAC_med_07 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1607.dbc")
TO_APAC_med_08 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1608.dbc")
TO_APAC_med_09 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1609.dbc")
TO_APAC_med_10 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1610.dbc")
TO_APAC_med_11 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1611.dbc")
TO_APAC_med_12 <- read.dbc("C:/Users/lemos/Downloads/TO_APAC_med/AMTO1612.dbc")

#####################
##########
#####################

SP_APAC_med_01$AP_NATJUR <- 1023
SP_APAC_med_02$AP_NATJUR <- 1023
SP_APAC_med_03$AP_NATJUR <- 1023
SP_APAC_med_04$AP_NATJUR <- 1023
SP_APAC_med_05$AP_NATJUR <- 1023
SP_APAC_med_06$AP_NATJUR <- 1023

SP_APAL_med <- do.call("rbind", list(SP_APAC_med_01, SP_APAC_med_02, SP_APAC_med_03, SP_APAC_med_04, SP_APAC_med_05,SP_APAC_med_06, SP_APAC_med_07, SP_APAC_med_08, SP_APAC_med_09, SP_APAC_med_10, SP_APAC_med_11, SP_APAC_med_12))
SP_APAL_med$UF <- "SP"

TO_APAC_med_01$AP_NATJUR <- 1023
TO_APAC_med_02$AP_NATJUR <- 1023
TO_APAC_med_03$AP_NATJUR <- 1023
TO_APAC_med_04$AP_NATJUR <- 1023
TO_APAC_med_05$AP_NATJUR <- 1023
TO_APAC_med_06$AP_NATJUR <- 1023

TO_APAL_med <- do.call("rbind", list(TO_APAC_med_01, TO_APAC_med_02, TO_APAC_med_03, TO_APAC_med_04, TO_APAC_med_05,TO_APAC_med_06, TO_APAC_med_07, TO_APAC_med_08, TO_APAC_med_09, TO_APAC_med_10, TO_APAC_med_11, TO_APAC_med_12))
TO_APAL_med$UF <- "TO"

BR_16_03_trat  <- do.call("rbind", list(SP_APAL_med, TO_APAL_med))

BR_16_03_trat_CID_hepb <- filter(BR_16_03_trat, AP_CIDPRI == "B180" | AP_CIDPRI == "B181" )

write.csv(BR_16_03_trat_CID_hepb, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_03_trat_CID_hepb.csv")

BR_16_01_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_01_trat_CID_hepb.csv")
BR_16_02_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_02_trat_CID_hepb.csv")
BR_16_03_trat_CID_hepb <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_16_03_trat_CID_hepb.csv")

BR_APAC_trat__hepb_2016 <- do.call("rbind", list( BR_16_01_trat_CID_hepb, BR_16_02_trat_CID_hepb, BR_16_03_trat_CID_hepb))

BR_APAC_trat__hepb_2016un <- distinct(BR_APAC_trat__hepb_2016, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_APAC_trat__hepb_2016, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2016.csv")
write.csv(BR_APAC_trat__hepb_2016un, "C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2016un.csv")

BR_APAC_trat__hepb_2016<- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2016.csv")

BR_APAC_trat__hepb_2016un <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BR_APAC_trat__hepb_2016un.csv")

#####################
##########
#####################


### Plots

## 2016

plot_uf_2016b <- table(BR_APAC_trat__hepb_2016un$UF)

plot_uf_2016b <- as.data.frame(plot_uf_2016b)  

plot_uf_2016b$Var1 <- as.character(plot_uf_2016b$Var1)

total_b_2016 <- matrix(c( "Brasil", 29459),ncol=2,byrow=TRUE)

colnames(total_b_2016) <- c("Var1","Freq")

total_b_2016 <- as.data.frame(total_b_2016)

plot_uf_2016b <-  do.call("rbind", list(plot_uf_2016b, total_b_2016  ))

plot_uf_2016b$Freq <- as.integer(plot_uf_2016b$Freq)


ggplot(data=plot_uf_2016b, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

## 2017

plot_uf_2017b <- table(BR_APAC_trat__hepb_2017un$UF)

plot_uf_2017b <- as.data.frame(plot_uf_2017b)  

plot_uf_2017b$Var1 <- as.character(plot_uf_2017b$Var1)

total_b_2017 <- matrix(c( "Brasil", 32691),ncol=2,byrow=TRUE)

colnames(total_b_2017) <- c("Var1","Freq")

total_b_2017 <- as.data.frame(total_b_2017)

plot_uf_2017b <-  do.call("rbind", list(plot_uf_2017b, total_b_2017  ))

plot_uf_2017b$Freq <- as.integer(plot_uf_2017b$Freq)

ggplot(data=plot_uf_2017b, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

## 2018

plot_uf_2018b <- table(BR_APAC_trat__hepb_2018un$UF)

plot_uf_2018b <- as.data.frame(plot_uf_2018b)  

plot_uf_2018b$Var1 <- as.character(plot_uf_2018b$Var1)

total_b_2018 <- matrix(c( "Brasil", 35356),ncol=2,byrow=TRUE)

colnames(total_b_2018) <- c("Var1","Freq")

total_b_2018 <- as.data.frame(total_b_2018)

plot_uf_2018b <-  do.call("rbind", list(plot_uf_2018b, total_b_2018  ))

plot_uf_2018b$Freq <- as.integer(plot_uf_2018b$Freq)

ggplot(data=plot_uf_2018b, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

## 2019

plot_uf_2019b <- table(BR_APAC_trat__hepb_2019un$UF)

plot_uf_2019b <- as.data.frame(plot_uf_2019b)  

plot_uf_2019b$Var1 <- as.character(plot_uf_2019b$Var1)

total_b_2019 <- matrix(c( "Brasil", 37503),ncol=2,byrow=TRUE)

colnames(total_b_2019) <- c("Var1","Freq")

total_b_2019 <- as.data.frame(total_b_2019)

plot_uf_2019b <-  do.call("rbind", list(plot_uf_2019b, total_b_2019  ))

plot_uf_2019b$Freq <- as.integer(plot_uf_2019b$Freq)

ggplot(data=plot_uf_2019b, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência")

###############################
### Tratamento scatter plot ###
###############################

plot_uf_2016b$ano <- "2016"
plot_uf_2017b$ano <- "2017"
plot_uf_2018b$ano <- "2018"
plot_uf_2019b$ano <- "2019"

sc_trat <- do.call("rbind", list(plot_uf_2016b, plot_uf_2017b, plot_uf_2018b, plot_uf_2019b))

###########################################################
ggplot(data = sc_trat, aes(x =Var1, 
                          y = Freq, 
                          group=ano, 
                          color=ano )) +
  geom_line() +
  geom_point() + 
  labs( 
    y="Frequência de tratamentos", 
    x="Unidade Federativa"
  ) + geom_text(aes(label=Freq),hjust=0, vjust=0, check_overlap = TRUE, size = 3) +  theme_minimal()  
##############################################################


#####################
#### Diagnóstico ####
#####################

# 2019

gal2019 <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/produtoV/Gal2019.xlsx")

gal19 <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/produtoV/gal19.xlsx")

ggplot(data=gal19, aes(x=reorder(UF, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

gal19$ano <- "2019"


# 2018

gal18 <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/produtoV/gal18.xlsx")

ggplot(data=gal18, aes(x=reorder(UF, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

gal18$ano <- "2018"

# 2017

gal17 <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/produtoV/gal17.xlsx")

ggplot(data=gal17, aes(x=reorder(UF, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

gal17$ano <- "2017"
  
  
# 2016

gal16 <- read.xlsx("C:/Users/lemos/OneDrive/Documentos/produtoV/gal16.xlsx")

ggplot(data=gal16, aes(x=reorder(UF, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 

gal16$ano <- "2016"


sc_diag <- do.call("rbind", list(gal16, gal17, gal18, gal19))


##### Função para destacar um elemento do eixo X ##########
colorado <- function(src, boulder) {
  if (!is.factor(src)) src <- factor(src)                   # make sure it's a factor
  src_levels <- levels(src)                                 # retrieve the levels in their order
  brave <- boulder %in% src_levels                          # make sure everything we want to make bold is actually in the factor levels
  if (all(brave)) {                                         # if so
    b_pos <- purrr::map_int(boulder, ~which(.==src_levels)) # then find out where they are
    b_vec <- rep("plain", length(src_levels))               # make'm all plain first
    b_vec[b_pos] <- "bold"                                  # make our targets bold
    b_vec                                                   # return the new vector
  } else {
    stop("All elements of 'boulder' must be in src")
  }
}
#############################################################


############################################################
ggplot(data = sc_diag, aes(x =UF, 
                          y = Freq, 
                          group=ano, 
                          color=ano )) +
  geom_line() +
  geom_point() + 
  labs( 
    y="Frequência de exames", 
    x="Unidade Federativa"
  ) + geom_text(aes(label=Freq),hjust=0, vjust=0, check_overlap = TRUE, size = 3) +  theme_minimal() +
  theme(axis.text.x=element_text(face=colorado(sc_diag$UF, "Brasil")))
##############################################################


#####################
#### Notificação ####
#####################

sinan_notif <- read.csv("C:/Users/lemos/Downloads/notif.csv")


## 2016

ggplot(data=sinan_notif, aes(x=reorder(UF, -n16), y=n16)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n16), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") + theme(axis.text.x = element_text(size=11, angle=90))


not_16 <- select(sinan_notif, UF, Freq = n16)
not_16$ano <- "2016"

## 2017

ggplot(data=sinan_notif, aes(x=reorder(UF, -n17), y=n17)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n17), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") + theme(axis.text.x = element_text(size=11, angle=90))

not_17 <- select(sinan_notif, UF, Freq = n17)
not_17$ano <- "2017"

## 2018

ggplot(data=sinan_notif, aes(x=reorder(UF, -n18), y=n18)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=n18), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") + theme(axis.text.x = element_text(size=11, angle=90))

not_18 <- select(sinan_notif, UF, Freq = n18)
not_18$ano <- "2018"

sc_not <- do.call("rbind", list(not_16, not_17, not_18))

############################################################
ggplot(data = sc_not, aes(x =UF, 
                           y = Freq, 
                           group=ano, 
                           color=ano )) +
  geom_line() +
  geom_point() + 
  labs( 
    y="Frequência de notificações", 
    x="Unidade Federativa"
  ) + geom_text(aes(label=Freq),hjust=0, vjust=0, check_overlap = TRUE, size = 3) +  theme_minimal()  +  theme(axis.text.x = element_text(size=11, angle=90)) +
  theme(axis.text.x=element_text(face=colorado(sc_not$UF, "Brasil")))
##############################################################

######################
### subNotificação ###
#####################

##### Carregando dados - até 2018 - Bancos ######

## AIH

#AIH_2018_bancos <- read.csv("F:/PROJETO_BDBM/PR_PO_FILTRADO_HEP_TYPE_BD/AIH_PR.csv")

AIH_2018_bancos <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/AIH_PR_BDcompleto.csv")

AIH_2018_bancos_hepb <- filter(AIH_2018_bancos, HEPATITE %like% "B")

AIH_2018_bancos_hepb$UF <- substr(AIH_2018_bancos_hepb$MUN_OCOR  ,1,2)

AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "12"] <- "AC"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "13"] <- "AM" 
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "27"] <- "AL"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "16"] <- "AP"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "29"] <- "BA"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "23"] <- "CE"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "53"] <- "DF"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "32"] <- "ES"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "52"] <- "GO"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "21"] <- "MA"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "51"] <- "MT"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "50"] <- "MS"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "31"] <- "MG"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "15"] <- "PA"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "25"] <- "PB"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "41"] <- "PR"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "26"] <- "PE"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "22"] <- "PI"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "24"] <- "RN"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "43"] <- "RS"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "33"] <- "RJ"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "11"] <- "RO"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "14"] <- "RR"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "42"] <- "SC"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "35"] <- "SP"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "28"] <- "SE"
AIH_2018_bancos_hepb$UF[AIH_2018_bancos_hepb$UF == "17"] <- "TO"

## APAC

#APAC_2018_bancos <- read.csv("F:/PROJETO_BDBM/PR_PO_FILTRADO_HEP_TYPE_BD/APAC_PR.csv")

APAC_2018_bancos <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/APAC_PR_BDcompleto.csv")

APAC_2018_bancos_hepb <- filter(APAC_2018_bancos, HEPATITE %like% "B")

APAC_2018_bancos_hepb$UF <- substr(APAC_2018_bancos_hepb$MUN_OCOR  ,1,2)

APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "12"] <- "AC"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "13"] <- "AM" 
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "27"] <- "AL"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "16"] <- "AP"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "29"] <- "BA"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "23"] <- "CE"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "53"] <- "DF"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "32"] <- "ES"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "52"] <- "GO"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "21"] <- "MA"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "51"] <- "MT"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "50"] <- "MS"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "31"] <- "MG"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "15"] <- "PA"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "25"] <- "PB"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "41"] <- "PR"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "26"] <- "PE"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "22"] <- "PI"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "24"] <- "RN"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "43"] <- "RS"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "33"] <- "RJ"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "11"] <- "RO"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "14"] <- "RR"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "42"] <- "SC"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "35"] <- "SP"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "28"] <- "SE"
APAC_2018_bancos_hepb$UF[APAC_2018_bancos_hepb$UF == "17"] <- "TO"

## BPAI

#BPAI_2018_bancos <- read.csv("F:/PROJETO_BDBM/PR_PO_FILTRADO_HEP_TYPE_BD/BPAI_PR.csv")

BPAI_2018_bancos <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/BPAI_PR_BDcompleto.csv")

BPAI_2018_bancos_hepb <- filter(BPAI_2018_bancos, HEPATITE %like% "B")

BPAI_2018_bancos_hepb$UF <- substr(BPAI_2018_bancos_hepb$MUN_OCOR  ,1,2)

BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "12"] <- "AC"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "13"] <- "AM" 
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "27"] <- "AL"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "16"] <- "AP"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "29"] <- "BA"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "23"] <- "CE"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "53"] <- "DF"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "32"] <- "ES"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "52"] <- "GO"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "21"] <- "MA"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "51"] <- "MT"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "50"] <- "MS"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "31"] <- "MG"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "15"] <- "PA"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "25"] <- "PB"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "41"] <- "PR"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "26"] <- "PE"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "22"] <- "PI"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "24"] <- "RN"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "43"] <- "RS"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "33"] <- "RJ"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "11"] <- "RO"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "14"] <- "RR"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "42"] <- "SC"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "35"] <- "SP"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "28"] <- "SE"
BPAI_2018_bancos_hepb$UF[BPAI_2018_bancos_hepb$UF == "17"] <- "TO"

## SIM

#SIM_2018_bancos <- read.csv("F:/PROJETO_BDBM/PR_PO_FILTRADO_HEP_TYPE_BD/SIM_PR.csv")

SIM_2018_bancos <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/SIM_PR_BDcompleto.csv")

SIM_2018_bancos_hepb <- filter(SIM_2018_bancos, HEPATITE %like% "B")

SIM_2018_bancos_hepb$UF <- substr(SIM_2018_bancos_hepb$MUN_OCOR  ,1,2)

SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "12"] <- "AC"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "13"] <- "AM" 
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "27"] <- "AL"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "16"] <- "AP"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "29"] <- "BA"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "23"] <- "CE"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "53"] <- "DF"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "32"] <- "ES"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "52"] <- "GO"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "21"] <- "MA"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "51"] <- "MT"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "50"] <- "MS"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "31"] <- "MG"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "15"] <- "PA"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "25"] <- "PB"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "41"] <- "PR"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "26"] <- "PE"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "22"] <- "PI"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "24"] <- "RN"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "43"] <- "RS"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "33"] <- "RJ"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "11"] <- "RO"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "14"] <- "RR"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "42"] <- "SC"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "35"] <- "SP"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "28"] <- "SE"
SIM_2018_bancos_hepb$UF[SIM_2018_bancos_hepb$UF == "17"] <- "TO"

# SINAN

#SINAN_2018_bancos <- read.csv("F:/PROJETO_BDBM/PR_PO_FILTRADO_HEP_TYPE_BD/SINAN.csv")

SINAN_2018_bancos <- read.csv("C:/Users/lemos/OneDrive/Documentos/produtoV/SINAN.csv")

#SINAN_2018_bancos_hepb <- filter(SINAN_2018_bancos, HEPATITE %like% "B")

SINAN_2018_bancos$UF <- substr(SINAN_2018_bancos$MUN_OCOR  ,1,2)

SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "12"] <- "AC"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "13"] <- "AM" 
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "27"] <- "AL"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "16"] <- "AP"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "29"] <- "BA"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "23"] <- "CE"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "53"] <- "DF"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "32"] <- "ES"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "52"] <- "GO"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "21"] <- "MA"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "51"] <- "MT"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "50"] <- "MS"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "31"] <- "MG"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "15"] <- "PA"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "25"] <- "PB"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "41"] <- "PR"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "26"] <- "PE"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "22"] <- "PI"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "24"] <- "RN"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "43"] <- "RS"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "33"] <- "RJ"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "11"] <- "RO"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "14"] <- "RR"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "42"] <- "SC"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "35"] <- "SP"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "28"] <- "SE"
SINAN_2018_bancos_hepb$UF[SINAN_2018_bancos_hepb$UF == "17"] <- "TO"

###### União de bancos - subn #######

subn_hepb_2018 <- do.call("rbind", list(AIH_2018_bancos_hepb, APAC_2018_bancos_hepb, BPAI_2018_bancos_hepb, SIM_2018_bancos_hepb))

subn_hepb_2018_un <- distinct(subn_hepb_2018, ID_PACIENTE , .keep_all = TRUE)

####### Intersecção entre bancos (união) e SINAN ########

## Inner join

SINAN_subn_hepb_2018_innerjoin <- inner_join(SINAN_2018_bancos, subn_hepb_2018, by = "ID_PACIENTE")

SINAN_subn_hepb_2018_innerjoin_un <- distinct(SINAN_subn_hepb_2018_innerjoin, ID_PACIENTE , .keep_all = TRUE)

SINAN_subn_hepb_2018_antijoin <- anti_join(subn_hepb_2018, SINAN_2018_bancos, by = "ID_PACIENTE")

SINAN_subn_hepb_2018_antijoin_un <- distinct(SINAN_subn_hepb_2018_antijoin, ID_PACIENTE , .keep_all = TRUE)

## Subnotificação plot UF

plot_uf_2018_subn <- table(SINAN_subn_hepb_2018_antijoin_un$UF)

plot_uf_2018_subn <- as.data.frame(plot_uf_2018_subn)  

plot_uf_2018_subn$Var1 <- as.character(plot_uf_2018_subn$Var1)

total_subn_2018 <- matrix(c( "Total", 5473),ncol=2,byrow=TRUE)

colnames(total_subn_2018) <- c("Var1","Freq")

total_subn_2018 <- as.data.frame(total_subn_2018)

plot_uf_2018_subn <-  do.call("rbind", list(plot_uf_2018_subn, total_subn_2018  ))

plot_uf_2018_subn$Freq <- as.integer(plot_uf_2018_subn$Freq)

ggplot(data=plot_uf_2018_subn, aes(x=reorder(Var1, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_text(aes(label=Freq), vjust=-0.3, size=3.5)+
  theme_minimal()  + labs(x="UF", y = "Frequência") 
