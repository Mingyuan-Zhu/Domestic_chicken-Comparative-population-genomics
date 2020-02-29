open TEST, "<test.fq";#读入数组，选出1+4n的部分读入一个标量
my@test=<TEST>;
close TEST;
open cc,">inter2.txt";
$n=1;
while(@test[$n])
{ chop $test[$n];
  print cc "$test[$n]";
 $n=$n+4;
}         
close cc;
#第一部分，我将需要的第二行读入inter2.txt文件
open cc ,"<inter2.txt";
open kmer,">inter3.txt";
while(<cc>)
{
  seek(cc,0,0)or die;
  while($_) 
  {print kmer $_ ;
   seek (cc,+1,1)or die;
  }
 #我怀疑perl没有控制输出长度的变量
 #这循环卡在了什么地方
}
close cc;
close kmer;
