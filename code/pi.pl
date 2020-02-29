open f1,"<Sailama.chr.recode.vcf.gz.W50S25.windowed.pi";
open f2,"<others.vcf.gz.W50S25.windowed.pi";
open f3,">sailamaandother.pi";

while (<f1>){
  chomp;
  @aa=split(/\s+/,$_);
  $hash{$aa[0]}{$aa[1]}=$aa[4];
}

while(<f2>){
chomp;
$line=$_;
@bb=split(/\s+/,$line);
if ($bb[0]=~/CHROM/){

  print f3"$line\tother_PI\tdelta_PI\tdivid_PI\n";
}
elsif(exists $hash{$bb[0]}{$bb[1]})
{
$delta=$hash{$bb[0]}{$bb[1]}-$bb[4];
$divid_PI=$hash{$bb[0]}{$bb[1]}/$bb[4];
print f3"$line\t$hash{$bb[0]}{$bb[1]}\t$delta\t$divid_PI\n";
}
}

#计算两个群体pi的的比值，取出交集