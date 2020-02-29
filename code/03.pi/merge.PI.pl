open f1,"<$ARGV[0]";
open f2,"<$ARGV[1]"; ##TARGET POP
open f3,">$ARGV[2]";

while(<f1>){
  chomp;
 @aa=split(/\s+/,$_);
 $hash{$aa[0]}{$aa[1]}=$aa[4];
   }

while(<f2>){
  chomp;
  $line=$_;
  @bb=split(/\s+/,$line);
  if($bb[0]=~/CHROM/){

    print f3"$line\tother_PI\tdelta_PI\tdivid_PI\n";
   }
  elsif(exists $hash{$bb[0]}{$bb[1]})
   {
   $delta=$hash{$bb[0]}{$bb[1]}-$bb[4];
   $divid_PI=$hash{$bb[0]}{$bb[1]}/$bb[4];
   print f3"$line\t$hash{$bb[0]}{$bb[1]}\t$delta\t$divid_PI\n";
   }

 }
