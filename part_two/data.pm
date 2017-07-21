
package Data;
use Exporter;

@ISA = ('Exporter');
@EXPORT = ('@table', '@new_people');


@table = (
    { first_name => 'Rose', last_name => 'Tyler', home => 'Earth' },
    { first_name => 'Zoe', last_name => 'Heriot', home => 'Space Station W3' },
    { first_name => 'Jo', last_name => 'Grant', home => 'Earth' },
    { first_name => 'Leela', last_name => NULL, home => 'Unspecified' },
    { first_name => 'Romana', last_name => NULL, home => 'Gallifrey' },
    { first_name => 'Clara', last_name => 'Oswald', home => 'Earth' },
    { first_name => 'Aldric', last_name => NULL, home => 'Alzarius' },
    { first_name => 'Susan', last_name => 'Foreman', home => 'Gallifrey' }
);

#Object below can be populated with new people and loaded into testdb, cannot be empty.

#@new_people = (
#  { first_name => 'Bruce', last_name => 'Banner', home => 'Earth' }
#);
