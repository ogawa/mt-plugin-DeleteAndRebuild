# DeleteAndRebuild
#
# $Id$

package MT::Plugin::DeleteAndRebuild;
use strict;
use MT 3.3;
use base qw(MT::Plugin);
our $VERSION = '0.01';

my $plugin = __PACKAGE__->new({
    name => 'DeleteAndRebuild',
    description => 'A plugin for rebuilding archives related to deleted entry.',
    author_name => 'Hirotaka Ogawa',
    author_link => 'http://profile.typekey.com/ogawa/',
    version => $VERSION,
    callbacks => { 'CMSPostDelete.entry' => \&handler }
});
MT->add_plugin($plugin);

sub handler {
    my ($eh, $app, $obj) = @_;
    $app->rebuild_entry(Entry => $obj, BuildDependencies => 1);
    $app->publisher->remove_entry_archive_file(Entry => $obj, ArchiveType => 'Individual')
	if $app->config('DeleteFilesAtRebuild');
}
