open fa, "test a.txt" or die "can't open file a";
open fb, "test b.txt" or die "can't open file b";
chomp ( my @A = <fa> ) ;
chomp ( my @B = <fb> ) ;#不关会咋滴
my ( @both, @A有B无, @B有A无, %counit );
print "列表a数据： @a \n";
print "列表b数据: @b \n";#文件不长我用hash就好了吗

