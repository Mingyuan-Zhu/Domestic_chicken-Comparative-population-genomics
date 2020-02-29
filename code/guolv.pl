open f1,"<B-C.site.fst.weir.fst";
open f2,">B-C.site.fst.weir.fst..Nonan.site.fst";
while(<f1>){
 chomp;
 if ($_=~/nan|POS/){
    ;
    }
  else{
   print f2 "$_\n";
    }
  }


##Çå³ý¿Õ¼¯