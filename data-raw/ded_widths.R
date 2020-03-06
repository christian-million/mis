## code to prepare `ded_widths` dataset goes here


##### GI
GI <- c(GI01 = 3, GI03 = 3, GI90 = 2, GI92 = 1)

##### SS
SS <- c(GI[c('GI90', 'GI01', 'GI03')],3,9,1,6,2,2,2,1,4,1,1,1,4,6,2,2,2,1,4,1,1,3,13)
names(SS) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', paste0("SS0", 1:9), paste0("SS", 10:20), 'Filler')

##### CB
CB <- c(GI[c('GI90', 'GI01', 'GI03')],12,12,68,6,1,1,length(109:112),length(113:116),1,1,1,1,1,1,6,8,length(137:148),length(149:160),length(161:172),7,9,1,1,1,1,1,1,26)
names(CB) <- c('GI90', 'GI01','GI03', paste0("CB0",0:9), paste0("CB",10:26), "Filler")

##### CC
CC <- c(GI[c('GI90', 'GI01', 'GI03')], 3,1,1,1,1,1,1,1,2)
names(CC) <- c('GI90', 'GI01','GI03', paste0("CC0",1:8), "Filler")

##### SD
SD <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,1,3,1,3,1,11)
names(SD) <- c('GI90', 'GI01', 'GI03','SB02','SB00', paste0("SD0",1:5), "Filler")

##### EB
EB <- c(GI[c('GI90', 'GI01', 'GI03')], 9,1,8,1,2,1,1,1,1,1,6,1,6,6,21,6)
names(EB) <- c('GI90', 'GI01', 'GI03', paste0("EB0",0:9), paste0("EB",10:14), "Filler")

##### EJ
EJ <- c(GI[c('GI90', 'GI01', 'GI03')], 9,2,1,6,length(27:29), length(30:34),4,6,length(45:49),31)
names(EJ) <- c('GI90', 'GI01', 'GI03', 'EB00', paste0("EJ0",1:8), "Filler")

#### SA
SA <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,4,4,2,6,2,2)
names(SA) <- c('GI90', 'GI01', 'GI03','SB02','SB00','SA01', 'SA03', 'SA04', 'SA05', 'SA07', 'Filler')

#### SB
SB <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,1,8,1,2,1,1,9,5,1,5,6,6,1,1,length(69:74),length(75:80),length(81:86),length(87:92),length(93:98),length(99:104),1,1,1,1,1,1,3,21,1,30,40,2,8,10,1,1,194,9)
names(SB) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', 'SB01', paste0('SB0',3:9), paste0('SB', 10:38), "Filler")

#### SC
SC <- c(GI[c('GI90', 'GI01', 'GI03')], 9,1,1,1,1,5,length(27:30),length(31:34),length(35:36),length(37:38),1,6,1,34)
names(SC) <- c('GI90', 'GI01', 'GI03', 'SB00',paste0('SC0',1:9),'SC10', 'SC11', 'SC18', 'Filler')

#### SE
SE <- c(GI[c('GI90', 'GI01', 'GI03')],3,9,1,3,1,length(26:29),1,3,1,1,1,1,3)
names(SE) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', paste0('SE0',1:9),'SE10', 'Filler')

#### SF
SF <- c(GI[c('GI90', 'GI01', 'GI03')],3,9,1,1,5,1,2,2,7,7,8,8,6,12)
names(SF) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', 'SF01', paste0('SF0', 3:9), 'SF10', 'SF11', 'SF17', 'Filler')

#### FA
FA <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,2,5,23)
names(FA) <- c('GI90', 'GI01', 'GI03', 'GI03_a', 'SB00', 'SF21', 'SF22', 'Filler')

#### SG
SG <- c(GI[c('GI90', 'GI01', 'GI03')], 9,4,4,1,1,1,1,1,1,2,1,1,5,1,2,1,1,1,1,1,1,1,10)
names(SG) <- c('GI90', 'GI01', 'GI03', 'SB00', paste0('SG0', 1:8), 'Filler', paste0('SG',10:21), 'Filler_a')

#### SM
SM <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,4,6,14,4,4,4,1,1,3,1,1,17)
names(SM) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', paste0('SM0', 1:9), 'SM12', 'SM13', 'Filler')

#### SP
SP <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,6,1,6,1,5,1)
names(SP) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', 'SP01', 'SP02', 'SP03', 'GI92', 'SP04', 'Filler')

#### SV
SV <- c(GI[c('GI90', 'GI01', 'GI03')], 3,9,1,1,2,1,1,1,1,1,1,1,9)
names(SV) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', paste0('SV0',1:9), 'SV10', 'Filler')

#### CW
CW <- c(GI[c('GI90', 'GI01', 'GI03')],9,1,6,8,8,length(41:42),length(43:46), 34)
names(CW) <- c('GI90', 'GI01', 'GI03', 'SB00', paste0('SC', 12:17), 'Filler')

#### SX
SX <- c(GI[c('GI90', 'GI01', 'GI03')],3,9,12,6,6,6,length(51:54), 3, length(58:62),12,1,3)
names(SX) <- c('GI90', 'GI01', 'GI03', 'SB02', 'SB00', 'CB01', 'XB00', paste0('SX0', 1:5), 'CB00', 'SX06', 'Filler')

#### XB
XB <- c(GI[c('GI90', 'GI01', 'GI03')], 3,12,6,1,6,6,1,length(44:47), length(48:51),1,1,1,1,length(56:61),12,7)
names(XB) <- c('GI90', 'GI01', 'GI03', 'GI02', 'CB01', paste0('XB0',0:9), 'XB10', 'XB11', 'CB00', 'Filler')

#### XE
XE <- c(GI[c('GI90', 'GI01', 'GI03')], 12,6,9,2,1,3,length(42:46), length(47:51), 12,17)
names(XE) <- c('GI90', 'GI01', 'GI03', 'CB01', 'XB00', 'EB00', 'XF00', paste0('XE0',1:4), 'CB00', 'Filler')

#### XF
XF <- c(GI[c('GI90', 'GI01', 'GI03')],12,6,2,2,6,6,9,4,4,length(60:64),12,4)
names(XF) <- c('GI90', 'GI01', 'GI03', 'CB01', 'XB00', paste0('XF0', 0:7), 'CB00', 'Filler')

ded_widths <- tibble::lst(CB,CC,CW,EB,EJ,FA,GI,SA,SB,SC,SD,SE,SF,SG,SM,SP,SS,SV,SX,XB,XE,XF)

usethis::use_data(ded_widths, overwrite = T)
