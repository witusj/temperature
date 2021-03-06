form <- "https://docs.google.com/forms/d/11hPnCmdWKH3sLXubsIjDBq8pNyXwSI0x7ZEXyFAKros/"
ping <- googleformr::gformr(form)

f <- file("/dev/cu.usbmodem1411", open="r")
nObs <- 50
Temperature <- rep(NA, nObs)
cycle <- 0
while(1==1){
  time <- ((cycle*nObs):((cycle+1)*(nObs)))[-1]
  plot(Temperature ~ time, t="n", ylim=c(10, 30), 
       main="Data stream from Arduino via USB port")
  for(i in 1:nObs){
    Temperature[i] <- scan(f, n=1, quiet=TRUE)
    points(i + cycle*nObs, Temperature[i], pch=19)
    
    Sys.sleep(10)
  }
  ping(Temperature[i])
  cycle <- cycle + 1
}
close(f)