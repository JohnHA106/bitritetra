library(ggplot2)
hexaose <- ggplot(X6a, aes(x = time, y = nc)) + geom_line()
triose <- ggplot(X3a, aes(x = time, y = nc)) + geom_line()
tetraose <- ggplot(X4a, aes(x = time, y = nc)) + geom_line()

hexaose
tetraose
triose