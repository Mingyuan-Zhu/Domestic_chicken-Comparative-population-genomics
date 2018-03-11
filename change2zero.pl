open f1,"<b-w-o.Window.fst";
open f2,">b-w-o.Window.plot.txt";

while(<f1>){
  chomp;
  @aa=split(/\s+/,$_);
  if($aa[5]<=0){
   $aa[5]=0;
   }
  print f2"$aa[0]\t$aa[1]\t$aa[5]\n";
}
close f1,f2;
