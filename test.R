library(googleformr)
# create function
form <- "https://docs.google.com/forms/d/11hPnCmdWKH3sLXubsIjDBq8pNyXwSI0x7ZEXyFAKros/"
ping <- googleformr::gformr(form)
ping('24.00')

ping <- googleformr::gformr('https://docs.google.com/forms/d/1sLh9CBW7RuzShqnbt260Ud85I_I2qQEdw_S6iMytJx4')
ping('employeexxx')