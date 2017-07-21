
use DBI;

$testdb = DBI->connect("DBI:SQLite:test.dbl");

$retrieve = $testdb->selectall_arrayref("SELECT first_name, last_name, home FROM people") || die "No data to read, please run 'perl load.pl' first and try again";

print "\n";
print qq(First Name \t Last Name \t Home \n);
foreach( @$retrieve ) {
 foreach $i (0..$#$_) {
    print "$_->[$i]";
    print "\t\t";
    }
 print "\n";
}
print "\n";

$testdb->disconnect;
