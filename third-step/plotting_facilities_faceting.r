library(ggplot2)
library(reshape)
pareto <- ordinal.optimization
colnames(pareto) <- c("Facilities", "No Failure", "Failure", "Failures")
pareto$index = 1:dim(pareto)[1]
melted <- melt(pareto, id=c("Facilities","Failures", "index"))

myplot <- ggplot(melted, aes(x=Facilities, y=value, fill=variable)) + geom_bar(stat='identity', position='stack') + facet_grid(~index) + coord_cartesian(xlim=c(45,47)) + scale_x_discrete(breaks=c(46,46,46))

myplot <- myplot + xlab('Facilities') + ylab('Distance') + theme_bw(18)
myplot <- myplot + theme(axis.title.y = element_text( face='bold'))
myplot <- myplot + theme(axis.title.x = element_text( face='bold'))
myplot <- myplot + theme(legend.position="top")
myplot <- myplot + labs(fill='Type')
myplot <- myplot + labs(alpha='Type')
myplot <- myplot + scale_fill_grey() 