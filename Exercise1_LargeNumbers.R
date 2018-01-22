# Test the law of large numbers of N random
# normally distributed numbers with mean = 0, stdev = 1:

# Create an R script that will count how many of these numbers fall between -1 and 1
# and divide by the total quantity of N

# You know that E(x) = 68.2%

# Check that Mean(Xn) -> E(x) as you rerun your script while increasing N


N <- rnorm(1:1000)

N_mean <- mean(N)
N_sd <- sd(N)
counter <- 0L

for(i in N){
  if(i > -1 & i < 1){
    counter <- counter + 1L
  }
  
}

result <- counter / length(N)
result