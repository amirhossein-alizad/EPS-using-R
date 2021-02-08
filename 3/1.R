library(MASS)
initialize_guests <- function(n, money){
  guests <- c()
  for(i in c(1:n)){
    guests = c(guests, money)
  }
  return(guests)
}
update_guests <- function(update_time, guests){
  mse <- c()
  for(i in 0:update_time){
    test <- sample((1:n), 2, replace = FALSE)
    guests[test[2]] = guests[test[2]] + 1
    guests[test[1]] = guests[test[1]] - 1
    flush.console()
    fit <- fitdistr(guests, "normal")
    fitmean <- unname(fit$estimate[1])
    fitstd <- unname(fit$estimate[2])
    tab <- table(factor(guests, levels = 1:100))
    hist(guests, xlab = "money", ylab = "repeat", main = i, type = "h", col = "gray", probability = TRUE)
    curve(dnorm(x, mean=fitmean, sd=fitstd), col="red", lwd=3, add=TRUE, yaxt="n")
    Sys.sleep(0.05)
    yfit <- rnorm(guests)
    print(yfit)
    mse <- c(mse, sqrt(sum((yfit - guests)**2)))
  }
  flush.console()
  plot(unlist(mse), col = "red", pch = 19)
}
n <- 20
money <- 50
guests <- initialize_guests(n, money)
update_guests(100, guests)
