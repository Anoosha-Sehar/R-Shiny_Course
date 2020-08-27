
my_data <- read.csv("Data/testdata.csv",header = TRUE)
my_data <- unique(my_data, by = "label")
#unique(my_data$license)
my_data <- filter(my_data, definition.status == "3" & image.status == "3")


