input <- read.table("day_2/input.txt")

hor_position <- 0
depth <- 0

for(i in 1:dim(input)[1]) {
  if (input[i, "V1"] == "forward") {
    hor_position <- hor_position + input[i, "V2"]
  } else if (input[i, "V1"] == "down") {
    depth <- depth + input[i, "V2"]
  } else if (input[i, "V1"] == "up") {
    depth <- depth - input[i, "V2"]
  }
}

print(hor_position * depth)

# another way
# hor_position <- sum(input$V2[input$V1 == "forward"])
# depth <- sum(input$V2[input$V1 == "down"]) - sum(input$V2[input$V1 == "up"])
# print(hor_position * depth)
