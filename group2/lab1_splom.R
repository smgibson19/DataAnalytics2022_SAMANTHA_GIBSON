library(lattice)
super.sym <- trellis.par.get("superpose.symbol")

# Draw Conditional Scatter Plot Matrices and Parallel Coordinate Plots
help("splom")

# plots data in a scatter plot matrix with each varieties in a different color
splom(~iris[1:4], groups = Species, data = iris,
      panel = panel.superpose,
      key = list(title = "Three Varieties of Iris",
                 columns = 3, 
                 points = list(pch = super.sym$pch[1:3],
                 col = super.sym$col[1:3]),
                 text = list(c("Setosa", "Versicolor", "Virginica"))))

# scatter plot matrix with the 3 varieties of iris showing 3 variables plotted for each type of iris
splom(~iris[1:3]|Species, data = iris, 
      layout=c(2,2), pscales = 0,
      varnames = c("Sepal\nLength", "Sepal\nWidth", "Petal\nLength"),
      page = function(...) {
          ltext(x = seq(.6, .8, length.out = 4), 
                y = seq(.9, .6, length.out = 4), 
                labels = c("Three", "Varieties", "of", "Iris"),
                cex = 2)
      })

help("parallelplot")
# type of scatter plot matrix function, method for natrix
parallelplot(~iris[1:4] | Species, iris) 

# group by species, horizontal
parallelplot(~iris[1:4], iris, groups = Species,
             horizontal.axis = FALSE, scales = list(x = list(rot = 90)))
