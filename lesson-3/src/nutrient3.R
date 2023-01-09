nutrient <- read.table("data/nutrient.txt")

colnames(nutrient) <- c("ID", "Calcium", "Iron", "Protein", "A", "C")

# Assign the unique IDs to the row names then remove the ID column
rownames(nutrient) <- nutrient$ID
nutrient <- nutrient[, -1]

hist(nutrient$Calcium)

par(mfrow = c(2, 2))
hist(nutrient$Calcium)
hist(sqrt(nutrient$Calcium))
hist(I(nutrient$Calcium ^ (1/4)))
hist(log(nutrient$Calcium))
par(mfrow = c(1, 1))

plot(nutrient$Iron,
     nutrient$Calcium)

plot(I(nutrient$Iron ^ (1/4)),
     I(nutrient$Calcium ^ (1/4)))

library(rgl)

plot3d(nutrient$Calcium,
       nutrient$Iron,
       nutrient$Protein)

plot(I(nutrient ^ (1/4)))