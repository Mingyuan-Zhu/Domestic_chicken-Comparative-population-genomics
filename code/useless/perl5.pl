open(A,"<a.txt");
while(my $line =
<A>){
  $save1{$line} = 1;
}#赋值一个hash，避免取到重复
close(A);
 
open(B,"<b.txt");
while(my $line =<B>){
  if(! exists $save1{$line}){$save3{$line}=1;}
  else{$save2{$line} = 1;}
}
close(B);
while(($key,$value)=each %save1){
    if(!exists $save2{$key}){$save4{$line}=1;} )

open($save2,">common"));#将save2的key输入到common文件
open($save3,">uniqueb"));#将save3的key输入到uniqueb文件
open($save4,">uniquea"));#将save4的key输入到uniquea文件

