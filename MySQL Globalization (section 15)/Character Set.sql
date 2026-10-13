A character set is a collection of characters with a unique encoding. It defines the set of characters that can be used in a text column, such as letters, numbers, symbols, and special characters.
SHOW CHARACTER SET;

+----------+---------------------------------+---------------------+--------+
| Charset  | Description                     | Default collation   | Maxlen |
+----------+---------------------------------+---------------------+--------+
| armscii8 | ARMSCII-8 Armenian              | armscii8_general_ci |      1 |
| ascii    | US ASCII                        | ascii_general_ci    |      1 |
| big5     | Big5 Traditional Chinese        | big5_chinese_ci     |      2 |
| binary   | Binary pseudo charset           | binary              |      1 |
...

those are the ones,,
The default character sets are utf8mb4 and utf8mb4_0900_ai_ci. However, you can change them accordingly.

