-- MySQL VARCHAR is the variable-length string whose length can be up to 65,535. 
-- MySQL stores a VARCHAR value as a 1-byte or 2-byte length prefix plus actual data.

CREATE TABLE IF NOT EXISTS varchar_test (
    s1 VARCHAR(32765) NOT NULL,
    s2 VARCHAR(32766) NOT NULL
)  CHARACTER SET 'latin1' COLLATE LATIN1_DANISH_CI;
