package WWW::MetaCPAN::Simple;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::Any::IfLOG '$log';
use Exporter qw(import);
our @EXPORT_OK = (
    'list_authors',
    'list_dists',
    'list_modules',
    'list_releases',
    'list_files',
    'list_favorites',
);

our %SPEC;

our %common_args = (
);

our %detail_arg = (
    detail => {
        summary => 'Whether to return detailed records',
        schema  => 'bool',
    },
);

our %detail_l_arg = (
    detail => {
        summary => 'Whether to return detailed records',
        schema  => 'bool',
        cmdline_aliases => {l=>{}},
    },
);

our %query_arg = (
    queries => {
        summary => 'Search queries',
        'summary.alt.plurality.singular' => 'Search query',
        schema  => ['array*', of=>'str*', min_len=>1],
        'x.name.is_plural' => 1,
        req => 1,
        pos => 0,
        greedy => 1,
    },
);

$SPEC{':package'} = {
    v => 1.1,
    summary => 'A simple wrapper for MetaCPAN::Client',
};

1;
# ABSTRACT:

=head1 SYNOPSIS

 use WWW::MetaCPAN::Simple qw(
     list_authors
     list_dists
     list_modules
     list_releases
     list_files
     list_favorites
 );


=head1 DESCRIPTION

B<EARLY RELEASE>.

This module provides a simple (non-OO) wrapper around MetaCPAN::Client, suitable
for use in a CLI script (see L<mcpan>, L<App::mcpan>). It provides only a subset
of the functionality of MetaCPAN::Client.


=head1 SEE ALSO

L<MetaCPAN::Client>

=cut
