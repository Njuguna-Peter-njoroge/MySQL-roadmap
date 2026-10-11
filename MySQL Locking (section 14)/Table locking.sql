-- A lock is a flag associated with a table. MySQL allows a client session to explicitly acquire a table lock to prevent other sessions 
-- from accessing the same table during a specific period.

A client session can acquire or release table locks only for itself. A client session cannot acquire or release table locks for other client sessions.

CREATE TABLE messages ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    message VARCHAR(100) NOT NULL
);

SELECT CONNECTION_ID();


INSERT INTO messages(message) 
VALUES('Hello');

SELECT * FROM messages;
LOCK TABLE messages READ;
INSERT INTO messages(message) 
VALUES('Hi');





-- LOCK TABLE SYNTAX

LOCK TABLES table_name [READ | WRITE]
The UNLOCK TABLES statement releases any table locks held by the current session:

UNLOCK TABLES;