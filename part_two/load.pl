
use DBI;
use Data; #adds data from arrays defined in sibling "data.pm" file

$testdb = DBI->connect("DBI:SQLite:test.dbl");
$testdb->do( "CREATE TABLE people (first_name, last_name, home)" ) || die "Table already created";

foreach my $object (@table){
  $testdb->do( qq(INSERT INTO people VALUES ("$object->{first_name}", "$object->{last_name}", "$object->{home}")) );
};

# if array new_people (in data.pm) is populated, condition below will add them into testdb
if (@new_people){
  foreach my $object (@new_people){
    $testdb->do( qq(INSERT INTO people VALUES ("$object->{first_name}", "$object->{last_name}", "$object->{home}")) );
  };
};

print "\nData successfully loaded. Run 'perl read.pl' to view results.\n\n";

$testdb->disconnect;
