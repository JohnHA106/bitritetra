library(ggplot2)
hexaose <- ggplot(X6a, aes(x = time, y = nc)) + geom_line()
triose <- ggplot(X3a, aes(x = time, y = nc)) + geom_line()
tetraose <- ggplot(X4a, aes(x = time, y = nc)) + geom_line()

hexaose
tetraose
triose

oligoplot <- ggplot(long, aes(x = time, y = nc, col = oligo)) + geom_line()
oligoplot

op2 <- oligoplot + xlim(c(7, 40)) + ylim(c(0, 750)) + theme_bw() + ylab("Charge difference, nC") + xlab("Time, mins")
op2
