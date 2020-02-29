library(ggplot2)
type <- c('stopgain','nonsynonymous','synonymous','stoploss')
nums <- c(711,85706,200747,159)
df <- data.frame(type = type, nums = nums)
#绘制条形图
p <- ggplot(data = df, mapping = aes(x = 'Content', y = nums, fill = type)) + geom_bar(stat = 'identity', position = 'stack')
p
p + coord_polar(theta = 'y')
#绘制条形宽度为1的条形图
p <- ggplot(data = df, mapping = aes(x = 'Content', y = nums, fill = type)) + geom_bar(stat = 'identity', position = 'stack', width = 1)
p
#绘制无空心点的饼图
p + coord_polar(theta = 'y')
#这里的标签其实就是坐标轴的标签，可以通过labs()函数将其清除。
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '')
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank())
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank())
#首先去掉图例
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank()) + theme(legend.position = "none") 
#通过计算极坐标中x和y轴的位置，将标签贴在相应的地方。
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank()) + theme(legend.position = "none") + geom_text(aes(y = df$nums/2 + c(0, cumsum(df$nums)[-length(df$nums)]), x = sum(df$nums)/150, label = labe)) 
setwd("C:\\Users\\Administrator\pdf(paste("\Desktop\\R SweeD")



