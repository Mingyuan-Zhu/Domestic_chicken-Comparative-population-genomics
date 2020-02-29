open A,"<Sailama-group.txt";
while (<A>){
chomp;
@aa=split(/\s+/,$_);
$hash1{$aa[1]}=$aa[0];
}
close A;
open C,"<152RJF_693dom.mv3.no3.autos_prunedData_pairwise.pca.eigenvec";
open B,">sort-pca.txt";
while (<C>){
chomp;
@aa=split(/\s+/,$_);
push (@aa,"$hash1{$aa[0]}");
print B"@aa\n";
};
close B;
close C;
