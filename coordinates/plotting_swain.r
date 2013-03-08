dataset <- swain
plot <- ggplot(data=dataset, aes(x=x,y=y,size=weight)) + geom_point() + theme_bw(18) 
plot <- plot + xlab('X Coordinate') + ylab('Y Coordinate')
plot <- plot + theme(axis.title.y = element_text( face='bold'))
plot <- plot + theme(axis.title.x = element_text( face='bold'))
plot <- plot + labs(size='Weight')
plot <- plot + coord_fixed()
plot