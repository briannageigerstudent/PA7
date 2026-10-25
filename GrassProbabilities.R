# COP2073C PA7
# Brianna Geiger
# 10/25/26
# Grass length probabilities

mean_value <- 10
variance_value <- 2
sd_value <- sqrt(variance_value)

blade_lower <- 9.5
blade_upper <- 11

prob_between <- pnorm(blade_upper, mean = mean_value, sd = sd_value) -
  pnorm(blade_lower, mean = mean_value, sd = sd_value)

cat("Probability blade is between 9.5 and 11 mm:",
    prob_between, "\n")


z_lower <- (blade_lower - mean_value) / sd_value
z_upper <- (blade_upper - mean_value) / sd_value


prob_from_z <- pnorm(z_upper) - pnorm(z_lower)

cat("Probability from Z-scores for 9.5 and 11 mm:",
    prob_from_z, "\n")

percentile <- 0.025

shortest_blade <- qnorm(percentile, mean = mean_value,
                        sd = sd_value)

cat("Blade length below shortest 2.5%:",
    shortest_blade, "mm\n")

z_shortest <- (shortest_blade - mean_value) / sd_value

cat("Z-score of shortest 2.5% blade:",
    z_shortest, "\n")
