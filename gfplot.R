library(ggplot2)

gfoverlay <- ggplot(gflong, aes(x = ml, y = mAU, col = sample)) + geom_line(lwd = 1) +
  xlab("Time, mins") + ylab("A280, mAU")
gfoverlay + theme_bw()
