dataset <- swain

library(ggplot2)
myplot <- ggplot(data=dataset, aes(x=x,y=y,size=weight)) + geom_point() + theme_bw(18) 
myplot <- myplot + xlab('X Coordinate') + ylab('Y Coordinate')
myplot <- myplot + theme(axis.title.y = element_text( face='bold'))
myplot <- myplot + theme(axis.title.x = element_text( face='bold'))
myplot <- myplot + labs(size='Weight')
myplot <- myplot + coord_fixed()
plot