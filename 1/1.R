n=20000
t=30
for(j in 1:t)
{
  d<-(sample(1:6, size=n * j, replace=TRUE))
  d = matrix(d,n,j)
  d = rowSums(d)
  hist(d, main = j, plot=T, col = "green", xlim = c(j,6*j+1), breaks=5*j+1, xlab = "sum of dices")
  Sys.sleep(0.7)
}
