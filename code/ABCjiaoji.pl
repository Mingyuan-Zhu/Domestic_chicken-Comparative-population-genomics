open A,"<a.txt";
foreach (<A>) { @pairs=split(/ /, $_);
 $count=@pairs;
$linea=$pairs[1];
  $hasha{$linea} = $pairs[2]; 
}
close(A);
open B,"<b.txt";
open m2,">m2.txt";
foreach (<B>) { @pairs=split(/ /, $_); 
 $count=@pairs; 
$lineb=$pairs[1];
  $hashb{$lineb} = $pairs[2];
}
close(B);
open C,"<c.txt";
foreach (<C>) { @pairs=split(/ /, $_); 
 $count=@pairs; 
$linec=$pairs[1];
  $hashc{$linec} = $pairs[2];
}
close(C);
###把ABC三个文件扔给hash数组
##
open(B,"<b.txt");
open m1,">m1.txt";
while(<B>){
@pairs=split(/ /, $_);
  $line4=$pairs[2];
  if(exists $hasha{$linex4}){
   print m1 "$linex4\n";
   }
close(m1);
close B;
###
open m1,"<m1.txt");
open m2,">m2.txt";
while(<m1>){
  if(exists $hashc{$_})
   print m2 "$_\n";
   }
close(m2);
cloes(m1);
###m2中就是取出来的3个的序号了
#
open LSBI ">ABC LSBL.txt";
open m2,"<m2.txt";
while(<m2>)
{
 $a=($hasha{$_}+$hashb{$_}-$hash{$_})/2;
  print LSBL "$a";
};
close LSBL;
close m2;

