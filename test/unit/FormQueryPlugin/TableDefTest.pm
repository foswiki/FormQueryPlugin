package TableDefTest;
use Unit::TestCase;
our @ISA = qw( Unit::TestCase );
use strict;
use Foswiki::Plugins::FormQueryPlugin::TableDef;

sub test_parse1 {
    my $this = shift;

    my $td = new Foswiki::Plugins::FormQueryPlugin::TableDef( "
blah
%EDITTABLE{format=\"|text,16,none|select,1,a,b|\" header=\"|*Fld1*|*This is field 2*\"}%
junk" );
    my $map = new Foswiki::Contrib::DBCacheContrib::MemMap();
    $td->loadRow( "|A|B|C|", $map );
    $this->assert_str_equals( "A", $map->get("Fld1") );
    $this->assert_str_equals( "B", $map->get("Thisisfield2") );
}

1;

