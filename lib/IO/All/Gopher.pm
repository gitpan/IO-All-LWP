package IO::All::Gopher;
use strict;
use warnings;
our $VERSION = '0.12';
use IO::All::LWP '-Base';

const type => 'gopher';

sub gopher { $self->lwp_init(__PACKAGE__, @_) }

1;

__END__

=head1 NAME

IO::All::Gopher - Extends IO::All to Gopher URLs

=head1 SYNOPSIS

    use IO::All;

    io('gopher://example.org/pub/xyz') > io('xyz');      # GET to file

=head1 DESCRIPTION

This module extends IO::All for dealing with Gopher URLs.
Note that you don't need to use it explicitly, as it is autoloaded by
L<IO::All> whenever it sees something that looks like a Gopher URL.

=head1 METHODS

This is a subclass of L<IO::All::LWP>. The only new method is C<gopher>, which
can be used to create a blank L<IO::All::Gopher> object; or it can also take an
Gopher URL as a parameter. Note that in most cases it is simpler just to call
io('gopher://example.com'), which calls the C<gopher> method automatically.

=head1 OPERATOR OVERLOADING

Read-only operators from IO::All may be used.  < GETs a Gopher URL.

=head1 SEE ALSO

L<IO::All::LWP>, L<IO::All>, L<LWP>.

=head1 AUTHORS

Ivan Tubert-Brohman <itub@cpan.org> and 
Brian Ingerson <ingy@cpan.org>
Gopher.pm patch generously submitted by Richard Soderberg.

=head1 COPYRIGHT

Copyright (c) 2004. Ivan Tubert-Brohman and Brian Ingerson. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
