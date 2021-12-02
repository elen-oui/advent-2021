report <- as.numeric(readLines("input.txt"))

sums <- RcppRoll::roll_sum(report, n = 3)
sums_increase_count <- sum(diff(sums) > 0)

# also
# sums_increase_count <- sum(diff(report, 3) > 0)
