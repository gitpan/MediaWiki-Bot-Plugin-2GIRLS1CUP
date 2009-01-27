package MediaWiki::Bot::Plugin::2GIRLS1CUP;

use strict;

our $VERSION = '0.0.1';

sub import {
	no strict 'refs';
	foreach my $method (qw/cup_get_all/) {
		*{caller() . "::$method"} = \&{$method};
	}
}

=item cup_get_all([$titleregex])

Seriously, I couldn't think of anything better to do with this.

=cut

sub cup_get_all {
	my $self    = shift;
	my $titleregex = shift || qr//;
	
	my @list = $self->get_pages_in_namespace(0, 5);
	my @return;
	foreach $page (@list) {
		if ($page=~/$titleregex/ and $self->get_text($page)=~/2g1c/) {
			push @return, $return
		}
	}
	return @return;

}

1;
