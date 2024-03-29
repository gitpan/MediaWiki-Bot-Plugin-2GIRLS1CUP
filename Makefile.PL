use 5.008008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
BEGIN{push @INC, "./lib"}
WriteMakefile(
    NAME              => 'MediaWiki::Bot::Plugin::2GIRLS1CUP',
    VERSION_FROM      => 'lib/MediaWiki/Bot/Plugin/2G1C.pm', # finds $VERSION
    PREREQ_PM         => { MediaWiki::Bot => '1.5.2'},
	 ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
	 (ABSTRACT_FROM    => 'lib/MediaWiki/Bot/Plugin/2G1C.pm', # retrieve abstract from module
    AUTHOR            => 'Dan Collins (ST47)') : () ),
    LICENSE           => 'gpl',
);
