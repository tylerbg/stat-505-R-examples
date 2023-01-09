library(MASS)

biv_dist <- function(rho) {
  rho <- rho
  
  Sigma <- rbind(c(1, rho),
                 c(rho, 1))
  
  set.seed(4960)
  xy <- as.data.frame(mvrnorm(1e5, c(1, 1), Sigma))
  
  den3d <- kde2d(xy$V1, xy$V2, n = 30)
  persp(den3d, box=FALSE)
  
  print(cor(xy$V1, xy$V2))
}

biv_dist(0)
biv_dist(0.7)
biv_dist(0.9)
