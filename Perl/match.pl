use strict;
use warnings;
my $count=0;
my $char;
my $i;
my $filename = 'input.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  $count = 0;
  my @chars = split(//, $row);
  foreach $char (split //, $row) {
  	if(($char=~/a/) || ($char=~/e/) || ($char=~/i/) || ($char=~/o/) || ($char=~/u/)) {
  		$count++;
  	}
}
  print "$row\n";
    if($row=~/or/)
		{
			print "$row contains or\n";
		}
	if($row!~/^h/)
		{
			print "$row does not start with h\n";
		}	
	if($row=~/[a-z]/ && $row=~/[0-9]/)
		{
			print "$row contains both letters and digits\n";
		}
	if($chars[1]=~/e/ && $chars[@chars-2]=~/y/)
		{
			print "$row has e as the second symbol and ends with y\n";
		}
	if($count > 1)
		{
			print "$row contains at least two vowel letters\n";
		}
}