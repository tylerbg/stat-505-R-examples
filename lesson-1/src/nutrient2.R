nutrient <- read.table("data/nutrient.txt")

colnames(nutrient) <- c("ID", "Calcium", "Iron", "Protein", "A", "C")

# Assign the unique IDs to the row names then remove the ID column
rownames(nutrient) <- nutrient$ID
nutrient <- nutrient[, -1]

# Print the variance-covariance matrix
cov(nutrient)

# Calculate the generalized variance
det(cov(nutrient))