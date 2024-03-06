To execute SQL commands without logging in to PostgreSQL interactively, you can use the psql command with the -c option followed by the SQL command. Here's an example:

bash
Copy code
psql -U your_username -d your_database -c "SELECT \* FROM your_table;"
Replace your_username, your_database, your_table, and the SQL command as needed.

If you want to execute SQL commands from a script without entering the PostgreSQL interactive shell, you can create a file (e.g., script.sql) containing your SQL commands and then run:

bash
Copy code
psql -U your_username -d your_database -f script.sql
Again, replace your_username and your_database with your PostgreSQL username and database name.

You may be prompted for your password when using these commands. If you want to avoid entering the password interactively, consider using the .pgpass file to store your PostgreSQL password. Ensure that the file permissions on .pgpass are secure (readable only by the owner) to avoid security risks.

Keep in mind that these examples assume that you have the psql command-line tool installed and that it is in your system's PATH. Adjust the command accordingly based on your PostgreSQL setup and system configuration.
