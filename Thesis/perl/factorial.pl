$filename = 'num.txt';

open($file, $filename) or die "Could not open file '$filename' \n";

$number = <$file>;
chomp $number;

#$number = 5; # Change the number here 

$fact = 1;

for( $i = $number; $i > 1 ; $i=$i-1 ){
    $fact = $fact*$i;
}

print "Factorial of $number is: $fact\n";
