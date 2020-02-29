library(ggplot2)
type <- c('stopgain','nonsynonymous','synonymous','stoploss')
nums <- c(711,85706,200747,159)
df <- data.frame(type = type, nums = nums)
#��������ͼ
p <- ggplot(data = df, mapping = aes(x = 'Content', y = nums, fill = type)) + geom_bar(stat = 'identity', position = 'stack')
p
p + coord_polar(theta = 'y')
#�������ο���Ϊ1������ͼ
p <- ggplot(data = df, mapping = aes(x = 'Content', y = nums, fill = type)) + geom_bar(stat = 'identity', position = 'stack', width = 1)
p
#�����޿��ĵ�ı�ͼ
p + coord_polar(theta = 'y')
#����ı�ǩ��ʵ����������ı�ǩ������ͨ��labs()�������������
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '')
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank())
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank())
#����ȥ��ͼ��
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank()) + theme(legend.position = "none") 
#ͨ�����㼫������x��y���λ�ã�����ǩ������Ӧ�ĵط���
p + coord_polar(theta = 'y') + labs(x = '', y = '', title = '') + theme(axis.text = element_blank()) + theme(axis.ticks = element_blank()) + theme(legend.position = "none") + geom_text(aes(y = df$nums/2 + c(0, cumsum(df$nums)[-length(df$nums)]), x = sum(df$nums)/150, label = labe)) 
setwd("C:\\Users\\Administrator\pdf(paste("\Desktop\\R SweeD")


