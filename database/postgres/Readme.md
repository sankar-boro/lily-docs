# Install and configure PostgreSQL

PostgreSQL (also known as Postgres) is an object-relational database system that has the features of traditional commercial database systems with enhancements to be found in next-generation database management systems (DBMS).

### Installation
```sql
sudo apt install postgresql
```

### Login and Connect as Default User
```
sudo -u postgres psql
```

### Changing the password of default user
```
ALTER USER postgres PASSWORD 'password';
```

### Create user
```
sudo -u postgres createuser <username>;
```

### Create database
```
sudo -u postgres createdb <database_name>;
```

### Give user a password
```
sudo -u postgres psql
alter user <username> with encrypted password '<password>';
```

### Granting privileges on database
```
grant all privileges on database <dbname> to <username>;
```