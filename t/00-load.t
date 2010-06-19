#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Fortune::Manager' ) || print "Bail out!
";
}

diag( "Testing Fortune::Manager $Fortune::Manager::VERSION, Perl $], $^X" );
