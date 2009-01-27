package TableDefTest;
use base qw(Unit::TestCase);

use Foswiki::Plugins::FormQueryPlugin::TableDef;

sub test_parse1 {
  my $this = shift;

  my $td = new Foswiki::Plugins::FormQueryPlugin::TableDef( "
blah
%EDITTABLE{format=\"|text,16,none|select,1,a,b|\" header=\"|*Fld1*|*This is field 2*\"}%
junk");

  my $map = $td->loadRow("|A|B|C|");
  $this->assert_str_equals("A", $map->get("Fld1"));
  $this->assert_str_equals("B", $map->get("Thisisfield2"));
}

1;

