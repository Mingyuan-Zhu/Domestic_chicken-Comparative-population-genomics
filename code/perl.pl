use strict;
use utf8;
open fa, "a.txt" or die "can't open a";
open fb, "b.txt" or die "can't open b";
chomp ( my @A = <fa> ) ;
chomp ( my @B = <fb> ) ;
close a; close b;
my ( @大家都有, @A有B无, @B有A无, %count );
$count{A}{$_}=1 foreach @A;
$count{B}{$_}=1 foreach @B;
++$count{C}{$_} foreach ( keys %{$count{A}}, keys %{$count{B}} ) ;
@大家都有 = grep { $count{C}{$_} == 2 } keys %{$count{C}};
foreach ( @A, @B ) { $count{A}{$_}++; $count{B}{$_}++ }
@A有B无 = grep {$count{A}{$_} == 1 } sort keys %{$count{A}};
@B有A无 = grep {$count{B}{$_} == 1 } sort keys %{$count{B}};
print "Common: @大家都有$/A-Only: @A有B无$/B-Only: @B有A无";

