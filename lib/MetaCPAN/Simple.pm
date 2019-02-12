package MetaCPAN::Simple;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

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

our %args_common = (
);

our %argopt_detail = (
    detail => {
        summary => 'Whether to return detailed records',
        schema  => 'bool',
        cmdline_aliases => {l=>{}},
    },
);

our %arg0_query = (
    query => {
        summary => 'Search query',
        schema  => 'str*',
        req => 1,
        pos => 0,
        cmdline_aliases => {q=>{}},
    },
);

$SPEC{':package'} = {
    v => 1.1,
    summary => 'A simple wrapper for MetaCPAN::Client',
};

sub _query_to_mcpan_query {
    my $q = shift;


}

$SPEC{list_authors} = {
    v => 1.1,
    summary => 'List CPAN authors using MetaCPAN',
    args => {
    },
};
sub list_authors {
    my %args = @_;



}

1;
# ABSTRACT:

=head1 SYNOPSIS

 use MetaCPAN::Simple qw(
     list_authors
     list_dists
     list_modules
     list_releases
     list_files
     list_favorites
 );

 # to list a specific author
 my $res = list_authors(id => "PERLANCAR");

 # to search using a simple query
 my $res = list_authors(query => "foo");      # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email contains 'foo'
 my $res = list_authors(query => "foo*");     # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email starts with 'foo'
 my $res = list_authors(query => "*foo");     # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email ends with 'foo'

 # AND queries
 my $res = list_authors(query => "foo bar");  # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email contains 'foo' and 'bar'

 # OR queries
 my $res = list_authors(query => "foo bar",
                        query_type => 'OR');  # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email contains 'foo' or 'bar'

 # NOT queries
 my $res = list_authors(query => "foo !bar"); # find authors where their PAUSE ID, github ID, twitter ID, perlmonks ID, name, or email contains 'foo' but not 'bar'

 # query on specific fields
 my $res = list_authors(query => "name:foo email:bar* !baz");
                                              # find authors where their name contains 'foo' and their email starts with 'bar' and their pause ID does not contain 'baz'

=head1 DESCRIPTION

B<EARLY RELEASE>.

This module provides a simple (non-OO) wrapper around L<MetaCPAN::Client>,
suitable for use in a CLI script (see L<mcpan> from L<App::mcpan>, or
L<App::MetaCPANUtils>). It provides only a subset of the functionality of
MetaCPAN::Client.


=head1 SEE ALSO

L<MetaCPAN::Client>

L<mcpan> from L<App::mcpan>

L<App::MetaCPANUtils>

=cut
