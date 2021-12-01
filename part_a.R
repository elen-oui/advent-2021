report <- as.numeric(readLines("input.txt"))

num_increase <- sum(diff(report) > 0)
