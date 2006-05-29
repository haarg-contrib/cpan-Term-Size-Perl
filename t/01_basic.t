
use Test::More tests => 6;

BEGIN { use_ok('Term::Size::Perl'); }

@chars = Term::Size::Perl::chars;
ok(@chars == 2);

@chars1 = Term::Size::Perl::chars *STDERR;
is_deeply([@chars], [@chars1]);

$cols = Term::Size::Perl::chars;
is($cols, $chars[0]);

@pixels = Term::Size::Perl::pixels;
ok(@pixels==2);

$x = Term::Size::Perl::pixels;
ok($x == $pixels[0]);

diag("This terminal is $chars[0]x$chars[1] characters,"),
diag("  and $pixels[0]x$pixels[1] pixels.");

