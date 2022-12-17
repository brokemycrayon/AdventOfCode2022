#day 1

use warnings;
use strict;

my $filename = 'day1input.txt';

open(FH, '<', $filename) or die $!;
my $mostCalories =0;
my $currentMost =0;
while(<FH>){
   chomp($_);
   if($_ eq ""){
      if($currentMost > $mostCalories){
         $mostCalories = $currentMost;
      }

      $currentMost =0;
      print "\n";
      next;
   }
   
   $currentMost += $_;
   print "current most is $currentMost\n";

   
}
print $mostCalories . "\n";

close(FH);

# 1
# 2
# 3   current most 6
#     most = 6,  current  = 0
# 2 
# 3   current 5
      