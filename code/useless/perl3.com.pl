open(A,"<a.txt");
open cc,">inter.txt";
while(<A>){
  chomp;
  $line=$_;
  $save1{$line} = 1;
}
close(A);
open(B,"<b.txt");
while(<B>){
  chomp;
  $linex=$_;
  $save1{$linex}=1;
#  if(exists $save1{$linex}){
 #  print cc"$linex\n";
 #  }
 # else{$save2{$line} = 1;}
}
close(B);
 
foreach $xx(keys%save1){
 print cc"$xx\n";
 }
#while(($key,$value)=each %save1){
#    if(!exists $save2{$key}){$save4{$line}=1;}
