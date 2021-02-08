times = 7000
x<-rep(0,500)
for(i in 1:7000)
{
  num = floor(runif(1, min=1, max=500))
  x[num] = x[num] + 1
  hist(x, main = i, plot = T,col = "green", xlab = "guest's money", ylab = "guests count")
  Sys.sleep(0.05)
}
