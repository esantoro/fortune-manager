use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Fortune::Manager',
    AUTHOR              => q{Emanuele Santoro <santoro@autistici.org>},
    VERSION_FROM        => 'lib/Fortune/Manager.pm',
    ABSTRACT_FROM       => 'lib/Fortune/Manager.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'bsd')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Fortune-Manager-*' },
);
