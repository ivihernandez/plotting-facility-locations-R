library(ggplot2)
pareto <- combined.pareto.1
colnames(pareto) <- c("Facilities", "Distance", "Distance after failure", "Failures")
pareto <- subset(pareto, Facilities > 0 & Distance < 2147483647)
plot <- ggplot(data=pareto, aes(x=Facilities, y=Distance)) + geom_bar(stat="identity") + theme_bw(18)
plot <- plot + theme(axis.title.y = element_text( face='bold'))
plot <- plot + theme(axis.title.x = element_text( face='bold'))


