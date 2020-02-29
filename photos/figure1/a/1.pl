open INPUT,"< /home/zhumy/yuanbao24chicken.variant_function";
open OUTPUT,">out2.txt";
my (%count,$word);
while(<INPUT>){
    chomp;
 @file = split(" ");
    $count{$file[1]}++;
}
foreach $word(keys %count){
    print OUTPUT "$word was seen $count{$word} times.\n";
}
close INPUT;
close OUTPUT;
