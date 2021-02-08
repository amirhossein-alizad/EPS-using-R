times = 10
data<-rep(times, 0)
for(j in 1:times)
{
  nums = rexp(30, 1.5)
  data[j] = mean(nums)
  hist(data, main = paste("exponential sampling with 10 repeats:", j), plot = T,col = "red", prob = T)
  curve(dnorm(x, mean = 1/1.5, sd= 1/sqrt(1.5*1.5*30)), col="blue", lwd=2, add=T)
  Sys.sleep(0.07)
}