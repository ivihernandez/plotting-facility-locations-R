library(ggplot2)
library(reshape)
pareto <- ordinal.optimization
colnames(pareto) <- c("Facilities", "No Failure", "Failure", "Failures")
pareto$index = 1:dim(pareto)[1]
melted <- melt(pareto, id=c("Facilities","Failures", "index"))


myplot <- ggplot(melted, aes(x=Facilities,y=value, group=index, fill=variable, alpha=variable)) 
myplot <- myplot + geom_bar(stat="identity", position="dodge", colour="black")  + theme_bw(18) 
myplot <- myplot + scale_fill_manual(values=c("black", "grey")) 

myplot <- myplot + scale_alpha_manual(values=c(1.0,0.5)) 
myplot <- myplot + scale_x_discrete(breaks=melted$Facilities, "Facilities")



myplot <- myplot + xlab('Facilities') + ylab('Distance')
myplot <- myplot + theme(axis.title.y = element_text( face='bold'))
myplot <- myplot + theme(axis.title.x = element_text( face='bold'))
myplot <- myplot + theme(legend.position="top")
myplot <- myplot + labs(fill='Type')
myplot <- myplot + labs(alpha='Type')



