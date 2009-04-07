package TablerowDefTest;

use base qw(Unit::TestCase);
use Foswiki::Plugins::FormQueryPlugin::TablerowDef;

sub test_parse1 {
    my $this = shift;
    my $td   = new Foswiki::Plugins::FormQueryPlugin::TablerowDef( "
blah
| *Name*    | *Type* | *Size* | *Values* | *Tooltip message* |
| Fld1	    | text   | 16     |		 |		     |
| This is field 2  | text   | 16     |		 |		     |
junk", $this->{ar} );

    my $map = $td->loadRow("|A|B|C|");
    $this->assert_str_equals( "A", $map->get("Fld1") );
    $this->assert_str_equals( "B", $map->get("Thisisfield2") );
}

1;

