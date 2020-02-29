open A,"<B-C.site.fst.weir.fst";
open cc,">B-C.site.fst.weir1.fst";
while (<A>){

  if(!/-nan/)
{print cc"$_"}
};
close A;
close cc;
