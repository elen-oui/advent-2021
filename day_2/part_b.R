input <- read.table("day_2/input.txt")

hor_position <- 0
depth <- 0
aim <- 0

for(i in 1:dim(input)[1]) {
  if (input[i, "V1"] == "forward") {
    hor_position <- hor_position + input[i, "V2"]
    if (aim > 0) {
      depth <- depth + input[i, "V2"] * aim
    }
  } else if (input[i, "V1"] == "down") {
    aim <- aim + input[i, "V2"]
  } else if (input[i, "V1"] == "up") {
    aim <- aim - input[i, "V2"]
  }
}

print(hor_position * depth)
