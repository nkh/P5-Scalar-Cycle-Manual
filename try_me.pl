
$|++ ;

use strict ;
use warnings ;

use lib qw(lib) ;

use Data::TreeDumper ;
use Scalar::Cycle::Manual ; 

my $cyclic_variable = new  Scalar::Cycle::Manual  qw( first second third ) ;

use Data::Dumper ;
print Dumper $cyclic_variable ;

print DumpTree \$cyclic_variable, 'cyclic_variable';

print '-' x 30 . "\n" ;

$cyclic_variable->auto_increment(1) ;

print Dumper [$cyclic_variable, $cyclic_variable] ;
print DumpTree [$cyclic_variable, $cyclic_variable], 'cyclic variable:' ;

print '-' x 30 . "\n" ;

$cyclic_variable->auto_increment(0) ;

print Dumper [$cyclic_variable, $cyclic_variable] ;
print DumpTree [$cyclic_variable, $cyclic_variable], 'cyclic variable:' ;

