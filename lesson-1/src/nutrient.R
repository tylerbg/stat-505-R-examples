nutrient <- read.table("data/nutrient.txt")

colnames(nutrient) <- c("ID", "Calcium", "Iron", "Protein", "A", "C")

summary(nutrient)

# Assign the unique IDs to the row names then remove the ID column
rownames(nutrient) <- nutrient$ID
nutrient <- nutrient[, -1]

# Descriptive statistics
colMeans(nutrient)

apply(nutrient, 
      2, # indicate that the function will be applied over columns
      sd) # give the function to be applied without parenthesis

cov(nutrient)

cor(nutrient)