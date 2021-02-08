times = 100
data<-rep(times, 0)
for(j in 1:times)
{
  nums = rpois(30, lambda = 2.5)
  data[j] = mean(nums)
  hist(data, main = paste("Poisson sampling with 100 repeats:", j), plot = T,col = "yellow", prob = T)
  curve(dnorm(x, mean = 2.5, sd=sqrt(2.5)/sqrt(30)), col="red", lwd=2, add=T)
  Sys.sleep(0.06)
}