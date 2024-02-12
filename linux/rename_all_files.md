# Navigate to the folder containing the files

cd /path/to/your/folder

# Rename all files with the extension .cql to .sql

```sh
for file in \*.cql; do
    mv -- "$file" "${file%.cql}.sql"
done
```
