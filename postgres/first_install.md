# Create the file repository configuration:

sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:

sudo apt-get update

# Install the latest version of PostgreSQL.

# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':

sudo apt-get -y install postgresql

### Post installation

```sh

sudo -u postgres psql
CREATE USER <username> WITH PASSWORD <password>;
CREATE DATABASE <database-name>;
GRANT ALL PRIVILEGES ON DATABASE <database-name> TO <user-name>;
ALTER USER <user-name> WITH SUPERUSER;

```
