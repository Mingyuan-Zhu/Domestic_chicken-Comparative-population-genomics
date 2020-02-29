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
open cc,"<inter2.txt";
open kmer,">inter3.txt";
$temp ="TAAGCATTGC";
print kmer "$temp";
while(<cc>)
{
  $temp = substr($temp,1);
  if(/\G$temp./) {

  print kmer $&;#正则表达式如何全文搜索
                  }
  $temp=$&;
}
close cc;
close kmer;

