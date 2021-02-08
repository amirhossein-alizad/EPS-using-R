n = 7000
x<-rep(50,1000)
for(i in 1:n)
{
  num = sample(1:1000, size = 2, replace = FALSE)
  x[num[1]] = x[num[1]] - 1
  x[num[2]] = x[num[2]] + 1
  hist(x, main = i, plot = T,col = "pink", xlab = "guest's money", ylab = "guests count")
  Sys.sleep(0.05)
}