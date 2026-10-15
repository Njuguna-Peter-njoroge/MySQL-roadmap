A MySQL collation is a set of rules used to compare characters in a particular character set. Each character set in MySQL has at least one default collation. It can have more than one collation. However, two character sets cannot have the same collation.


SHOW CHARACTER SET;


To get all collations for a given character set, you use the SHOW COLLATION  statement as follows:

SHOW COLLATION LIKE 'character_set_name%';

-- FOR EXAMPLE:

SHOW COLLATION LIKE 'latin1%';
