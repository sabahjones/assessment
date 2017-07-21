use DBI;

$testdb = DBI->connect("DBI:SQLite:test.dbl");
$question = $testdb->prepare("DROP TABLE IF EXISTS people");
$question->execute();

print "\ntestdb table has been cleared. Reload with 'perl load.pl'\n\n";
