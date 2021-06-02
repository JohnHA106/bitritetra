library(ggplot2)
hexaose <- ggplot(X6a, aes(x = time, y = nc)) + geom_line()
triose <- ggplot(X3a, aes(x = time, y = nc)) + geom_line()
tetraose <- ggplot(X4a, aes(x = time, y = nc)) + geom_line()

hexaose
tetraose
triose

oligoplot <- ggplot(long, aes(x = time, y = nc, col = oligo)) + geom_line(lwd = 1)
oligoplot

op2 <- oligoplot + xlim(c(4.2, 40)) + ylim(c(-50, 750)) + theme_bw() + ylab("Charge difference, nC") + xlab("Time, mins")
op2
write.csv(long, file = "longtablerawdata.csv")
##add in lines for standards
op2 + geom_vline(xintercept = 15.3) + #biose
  geom_vline(xintercept = 5.29) + #glucose
  geom_vline(xintercept =  21.56) + #triose
  geom_vline(xintercept = 28.86) + #hexaose
  geom_vline(xintercept = 24.8) # tetraose

opanno <- op2 + geom_vline(xintercept = 15.3) + #biose
  geom_vline(xintercept = 5.29) + #glucose
  geom_vline(xintercept =  21.56) + #triose
  geom_vline(xintercept = 28.86) + #hexaose
  geom_vline(xintercept = 24.8) # tetraose

