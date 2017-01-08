form <- "https://docs.google.com/forms/d/11hPnCmdWKH3sLXubsIjDBq8pNyXwSI0x7ZEXyFAKros/"
ping <- googleformr::gformr(form)

f <- file("/dev/cu.usbmodem1411", open="r")

while(1==1){
    Temperature <- scan(f, n=1, quiet=TRUE)
    ping(Temperature)
    Sys.sleep(10)
  }
close(f)