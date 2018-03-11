#!/bin/sh
#PBS -N chickenfst
#PBS -q small
#PBS -l nodes=1:ppn=1
#PBS -o /home/zhumy/yuanbaochicken  /chickenfst.out
#PBS -e /home/zhumy/yuanbaochicken  /chickenfst.err


cd  /home/zhumy/yuanbaochicken
/home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --gzvcf Frizzle_chicken_filterno3.vcf   --weir-fst-pop yuanbao_black.list   --weir-fst-pop yuanbao_other.list  --out b-o.site.fst #璁＄畻black,ot涓や釜fst
/home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --gzvcf Frizzle_chicken_filterno3.vcf   --weir-fst-pop yuanbao_black.list   --weir-fst-pop yuanbao_white.list  --out b-w.site.fst #璁＄畻black,w涓や釜fst
/home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --gzvcf Frizzle_chicken_filterno3.vcf   --weir-fst-pop yuanbao_white.list   --weir-fst-pop yuanbao_other.list  --out w-o.site.fst #璁＄畻w,ot涓や釜fst


##perl,涓嶈鐩存帴杩愯##娓呴櫎绌洪泦
cd  /home/zhumy/yuanbaochicken
open f1,"<b-o.site.fst.weir.fst";
open f2,">b-o.site.fst.weir.fst.Nonan.site.fst";
while(<f1>){
 chomp;
 if ($_=~/nan|POS/){
    ;
    }
  else{
   print f2 "$_\n";
    }
  }

open f1,"<w-o.site.fst.weir.fst";
open f2,">w-o.site.fst.weir.fst.Nonan.site.fst";
while(<f1>){
 chomp;
 if ($_=~/nan|POS/){
    ;
    }
  else{
   print f2 "$_\n";
    }
  }
  
open f1,"<b-o.site.fst.weir.fst";
open f2,">b-o.site.fst.weir.fst.Nonan.site.fst";
while(<f1>){
 chomp;
 if ($_=~/nan|POS/){
    ;
    }
  else{
   print f2 "$_\n";
    }
  }
  
  

  
  ##鎶婃瘡涓釜缇や綋vcf鍒嗗紑
  /home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --vcf Frizzle_chicken_filterno3.vcf   --keep  yuanbao_black.list  --out yuanbao_black. --recode &  ##a鐨勬牱鏈釜浣撳湪a.list,鍙栧嚭a
  /home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --vcf Frizzle_chicken_filterno3.vcf   --keep  yuanbao_white.list  --out yuanbao_white. --recode &  ##a鐨勬牱鏈釜浣撳湪a.list,鍙栧嚭a
  /home/zhumy/biosoft/vcftools/vcftools_0.1.13/bin/vcftools --vcf Frizzle_chicken_filterno3.vcf   --keep  yuanbao_other.list  --out yuanbao_other. --recode &  ##a鐨勬牱鏈釜浣撳湪a.list,鍙栧嚭a
