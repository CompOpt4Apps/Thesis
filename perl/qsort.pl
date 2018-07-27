sub quick_sort {
    return @_ if @_ < 2;
    my $p = splice @_, int rand @_, 1;
    quick_sort(grep $_ < $p, @_), $p, quick_sort(grep $_ >= $p, @_);
}

$filename = 'qsort.txt';

open($file, $filename) or die "Could not open file '$filename' \n";

$n = <$file>;
chomp $n;

my @a = map { rand } ( 1 .. $n );
 
@a = quick_sort @a;
print "@a\n";
