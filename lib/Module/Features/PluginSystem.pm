package Module::Features::PluginSystem;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %FEATURES_DEF = (
    v => 1,
    summary => 'Features of plugin systems',
    description => <<'MARKDOWN',

**Glossary**

*Event*: a named execution point where plugins' handlers get the chance to add
behaviors.

*Plugin*: a code packaged in a Perl module that contains extra behaviors in one
or more of /handler/s.

*Handler*: A subroutine in a /plugin/ that will get called in an /event/.

*Priority*: anumber between 0 and 100 signifying the order of execution of a
handler compared to handlers from other plugins. Lower number means a higher
priority (executed first). Default priority if unspecified is 50.

MARKDOWN
    features => {
        can_let_plugin_contain_multiple_handlers => {},

        can_let_plugin_skip_event           => {tags=>['category:flow']},
        can_let_plugin_skip_other_plugins   => {tags=>['category:flow']},
        can_let_plugin_repeat_event         => {tags=>['category:flow']},
        can_let_plugin_repeat_other_plugins => {tags=>['category:flow']},

        can_put_handler_in_other_events     => {summary=>'Allow a plugin handler for an event to be assigned to another event', tags=>['category:flow']},
        can_handler_priority                => {},
        can_customize_handler_priority      => {summary=>"Allow application user to customize the priority of a plugin's handler, without modifying source code"},
        can_plugin_configuration            => {summary=>'Allow plugin to have configuration; see also feature: '},
        can_add_multiple_handlers_from_a_plugin => {summary=>'Allow adding a plugin instance multiple times'},
        speed                               => {summary => 'Subjective speed rating, relative to other plugin system modules', schema=>['str', in=>[qw/slow medium fast/]], tags=>['category:speed']},
    },
);

1;
# ABSTRACT: Features of modules that generate text tables

=head1 SEE ALSO

L<Module::Features>
