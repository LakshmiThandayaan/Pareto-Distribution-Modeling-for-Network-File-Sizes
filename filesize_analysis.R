#Reading the data
data <- read.csv("filesize.csv", header = TRUE)

#Histogram of the file sizes
hist(data$x, main = "File Sizes", col = 'dark gray', xlab = "File sizes in kB")

#Data Summary
mean_x <- mean(data$x)
sd_x <- sd(data$x)
median_x <- median(data$x)
quantiles_x <- quantile(data$x)
cat("Mean:", mean_x, "\n")
cat("Standard Deviation:", sd_x, "\n")
cat("Median:", median_x, "\n")
cat("Quantiles:\n")
print(quantiles_x)

#Estimation of alpha
alpha <- 1000 / (sum(log(data$x)) - length(data$x) * log(1000))
cat("Estimated alpha:", round(alpha, 3), "\n")

#Fisher Information
fisher_information <- length(data$x) / (alpha^2)
se_alpha <- sqrt(1 / fisher_information)
cat("Fisher Information:", round(fisher_information, 3), "\n")
cat("Standard Error of alpha:", round(se_alpha, 3), "\n")

#Confidence Interval
Confidence Interval
alpha_hat <- round(alpha, 3)
alpha_L <- round(alpha_hat - 1.96 * se_alpha, 3)
alpha_U <- round(alpha_hat + 1.96 * se_alpha, 3)
cat("95% Confidence Interval for alpha:", "[", alpha_L, ",", alpha_U, "]\n")

#Distribution of Sample Mean
library(Pareto)
utils:::menuInstallPkgs()
library(Pareto)
set.seed(123) # For reproducibility
m <- 1000 # Number of simulations
n <- 1000 # Sample size
min_x <- 1000 #Minimum file size
sample_means <- numeric(m)
for (i in 1:m) {
  sample_data <- rPareto(n,min_x, alpha)
sample_means[i] <- mean(sample_data)
}

#Histogram of Sample Means
hist(sample_means, main = 'Histogram of Sample Means', col = 'dark gray', xlab = 'Values of Sample Mean')
mean_y <- mean(sample_means)
sd_y <- sd(sample_means)
median_y <- median(sample_means)
quantiles_y <- quantile(sample_means)
cat("Mean of Sample Means:", round(mean_y, 3), "\n")
cat("Standard Deviation of Sample Means:", round(sd_y, 3), "\n")
cat("Median of Sample Means:", round(median_y, 3), "\n")
cat("Quantiles of Sample Means:\n")
print(quantiles_y)

#Setting the Upper Limit
upper_limit <- round(qPareto(0.99, 1000, alpha), 0)
cat("Upper limit for file sizes to ensure 99% acceptance:", upper_limit, "kB\n")
