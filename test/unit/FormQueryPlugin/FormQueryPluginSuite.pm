package FormQueryPluginSuite;

use Unit::TestSuite;
our @ISA = qw( Unit::TestSuite );

sub name { 'FormQueryPlugin' }

sub include_tests {
    qw(RelationTest TableDefTest TablerowDefTest TableFormatTest WebDBTest);
}

1;
