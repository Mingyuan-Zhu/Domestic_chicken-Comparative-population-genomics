###########pca
biosoft/vcftools/vcftools_0.1.13/bin/vcftools  --gzvcf /home/zhumy/zmyword/Sailama.chr2.recode.vcf.gz  --maf 0.05 --plink --out 152RJF_693dom.mv3.no3.autos

/home/zhumy/biosoft/PLINK/plink --noweb --dog  --file 152RJF_693dom.mv3.no3.autos --indep-pairwise 50 10 0.1
/home/zhumy/biosoft/PLINK/plink --noweb --dog  --file 152RJF_693dom.mv3.no3.autos --extract plink.prune.in --make-bed --out 152RJF_693dom.mv3.no3.autos_prunedData_pairwise
/home/zhumy/biosoft/gcta/gcta64 --bfile 152RJF_693dom.mv3.no3.autos_prunedData_pairwise --make-grm --autosome --out 152RJF_693dom.mv3.no3.autos_prunedData_pairwise_grm
/home/zhumy/biosoft/gcta/gcta64 --grm 152RJF_693dom.mv3.no3.autos_prunedData_pairwise_grm  --pca 3 --out 152RJF_693dom.mv3.no3.autos_prunedData_pairwise.pca
##处理pca的方法，转换两部文件，主成分分析

