report <- as.numeric(readLines("input.txt"))

sums <- RcppRoll::roll_sum(report, n =3)
sums_increase_count <- sum(diff(sums) > 0)
