if (!require("cricketr")){ 
  install.packages("cricketr",lib = "c:/test") 
} 
library(cricketr)
?getPlayerData

tendulkar <- getPlayerData(35320,dir="..",file="tendulkar.csv",type="batting",homeOrAway=c(1,2),
                           result=c(1,2,4))
par(mfrow=c(1,3))
par(mar=c(4,4,2,2))
batsmanRunsFreqPerf("./tendulkar.csv","Sachin Tendulkar")
batsmanMeanStrikeRate("./tendulkar.csv","Sachin Tendulkar")
batsmanRunsRanges("./tendulkar.csv","Sachin Tendulkar")
dev.off()

par(mfrow=c(1,3))
par(mar=c(4,4,2,2))
batsman4s("./tendulkar.csv","Tendulkar")
batsman6s("./tendulkar.csv","Tendulkar")
batsmanDismissals("./tendulkar.csv","Tendulkar")

battingPerf3d("./tendulkar.csv","Sachin Tendulkar")

batsmanAvgRunsGround("./tendulkar.csv","Sachin Tendulkar")

batsmanAvgRunsOpposition("./tendulkar.csv","Tendulkar")

batsmanRunsLikelihood("./tendulkar.csv","Sachin Tendulkar")

#comaring different batsmen

batsmanPerfBoxHist("./tendulkar.csv","Sachin Tendulkar")
batsmanPerfBoxHist("./kallis.csv","Jacques Kallis")
batsmanPerfBoxHist("./ponting.csv","Ricky Ponting")
batsmanPerfBoxHist("./sangakkara.csv","K Sangakkara")

#contribution to won and lost matches
tendulkarsp 
par(mfrow=c(2,2))
par(mar=c(4,4,2,2))
batsmanContributionWonLost("tendulkarsp.csv","Tendulkar")
batsmanContributionWonLost("kallissp.csv","Kallis")
batsmanContributionWonLost("pontingsp.csv","Ponting")
batsmanContributionWonLost("sangakkarasp.csv","Sangakarra")
dev.off()

#performance home and overseas
par(mfrow=c(2,2))
par(mar=c(4,4,2,2))
batsmanPerfHomeAway("tendulkarsp.csv","Tendulkar")
batsmanPerfHomeAway("kallissp.csv","Kallis")
batsmanPerfHomeAway("pontingsp.csv","Ponting")
batsmanPerfHomeAway("sangakkarasp.csv","Sangakarra")
dev.off()

#relative strike rate
frames <- list("./tendulkar.csv","./kallis.csv","ponting.csv","sangakkara.csv")
names <- list("Tendulkar","Kallis","Ponting","Sangakkara")
relativeBatsmanSR(frames,names)

#relative run frequency
frames <- list("./tendulkar.csv","./kallis.csv","ponting.csv","sangakkara.csv")
names <- list("Tendulkar","Kallis","Ponting","Sangakkara")
relativeRunsFreqPerf(frames,names)

#moving avg of runs
par(mfrow=c(2,2))
par(mar=c(4,4,2,2))
batsmanMovingAverage("./tendulkar.csv","Sachin Tendulkar")
batsmanMovingAverage("./kallis.csv","Jacques Kallis")
batsmanMovingAverage("./ponting.csv","Ricky Ponting")
batsmanMovingAverage("./sangakkara.csv","K Sangakkara")
dev.off()

#runs forecast
par(mfrow=c(2,2))
par(mar=c(4,4,2,2))
batsmanPerfForecast("./tendulkar.csv","Sachin Tendulkar")
batsmanPerfForecast("./kallis.csv","Jacques Kallis")
batsmanPerfForecast("./ponting.csv","Ricky Ponting")
batsmanPerfForecast("./sangakkara.csv","K Sangakkara")

#check form
checkBatsmanInForm("./tendulkar.csv","Sachin Tendulkar")
checkBatsmanInForm("./kallis.csv","Jacques Kallis")
checkBatsmanInForm("./ponting.csv","Ricky Ponting")

#analysis of top wicket takers
#wicket frequency
par(mfrow=c(1,3))
par(mar=c(4,4,2,2))
bowlerWktsFreqPercent("./kumble.csv","Anil Kumble")
bowlerWktsFreqPercent("./warne.csv","Shane Warne")
bowlerWktsFreqPercent("./murali.csv","M Muralitharan")
dev.off()

#wickets vs venues
bowlerAvgWktsGround("./murali.csv","Muralitharan")

#wickets vs opposition
bowlerAvgWktsOpposition("./murali.csv","Muralitharan")

#relative wicket frequency
frames <- list("./kumble.csv","./murali.csv","warne.csv")
names <- list("Anil KUmble","M Muralitharan","Shane Warne")
relativeBowlingPerf(frames,names)
dev.off()

#future wicket forecast
par(mfrow=c(1,3))
par(mar=c(4,4,2,2))
bowlerPerfForecast("./kumble.csv","Anil Kumble")
bowlerPerfForecast("./warne.csv","Shane Warne")
bowlerPerfForecast("./murali.csv","M Muralitharan")
dev.off()