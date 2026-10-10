-- The TEXT is useful for storing long-form text strings that can take from 1 byte to 4GB. In practice, you often use the TEXT data type
--  for storing articles in news sites, and product descriptions in e-commerce sites.

MySQL provides four TEXT types:
TINYTEXT -- The maximum number of characters that TINYTEXT can store is 255 ( 2^8 = 256, 1 byte overhead).
TEXT     -- The TEXT data type can hold up to 64 KB which is equivalent to 65535 (2^16 – 1) characters
MEDIUMTEXT -- The MEDIUMTEXT can hold up to 16MB text data which is equivalent to 16,777,215 characters. It requires 3 bytes overhead.
LONGTEXT -- The LONGTEXT can store text data up to 4GB, which is quite big in common scenarios. It has 4 bytes overhead.