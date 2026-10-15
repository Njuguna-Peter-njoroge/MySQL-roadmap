# MySQL Database Management Guide (Root User)

This guide walks you through how to log into MySQL as the **root user** to create, select, and drop (delete) a database using the command-line interface.

---

## 1. How to Log In as the Root User

To perform administrative tasks like creating or dropping databases, you must log into MySQL with the root account. 

Open your terminal (Linux/Mac) or Command Prompt (Windows) and run:

```bash
mysql -u root -p
```

* **`-u root`**: Specifies that you want to log in as the `root` user.
* **`-p`**: Prompts you for the root user's password. Type your password when prompted and press `Enter` (the characters will not show as you type).

---

## 2. Managing Databases (SQL Commands)

Once you are logged into the MySQL shell (`mysql>`), you can run the following SQL commands. **Remember to end every SQL command with a semicolon (`;`).**

### A. View Existing Databases
Before creating a new database, see what already exists on your server:
```sql
SHOW DATABASES;
```

### B. Create a New Database
To create a database named `my_company`, use the `CREATE DATABASE` command:
```sql
CREATE DATABASE my_company;
```

### C. Select/Use a Database
To start working inside your newly created database (or any existing database), use the `USE` command. This tells MySQL where to create tables or run queries:
```sql
USE my_company;
```
*Note: You will see a `Database changed` message confirming you have successfully selected it.*

### D. Drop (Delete) a Database
**Warning:** Dropping a database permanently deletes the database and all the tables/data inside it. This action cannot be undone.

To drop the `my_company` database, run:
```sql
DROP DATABASE my_company;
```

---

## 3. Quick Reference Cheat Sheet

| Task | Command Line / SQL Statement |
| :--- | :--- |
| **Log In as Root** | `mysql -u root -p` |
| **List Databases** | `SHOW DATABASES;` |
| **Create Database** | `CREATE DATABASE db_name;` |
| **Select Database** | `USE db_name;` |
| **Delete Database** | `DROP DATABASE db_name;` |
| **Exit MySQL Shell** | `EXIT;` or `quit;` |

---

## 4. Alternative: One-Line Shortcuts

If you want to log in and immediately select a database in a single command, you can pass the database name directly at login:

```bash
mysql -u root -p my_company
```
*(This will ask for your password and drop you straight into the `my_company` database context).*
