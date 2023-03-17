# Backup your Data

Even though Scylla is a fault-tolerant system, it is recommended to regularly back up the data to external storage. Backup is a per-node procedure. Make sure to back up each node in your cluster. The backup includes two procedures. These are:

1. Full Backup - copy the entire data of a node
2. Incremental - updates (delta) - flushed SSTables

### Full Backup - Snapshots
Snapshots are taken using nodetool snapshot. First, the command flushes the MemTables from memory to SSTables on disk, and afterward, it creates a hard link for each SSTable in each keyspace. With time, SSTables are compacted, but the hard link keeps a copy of each file. This takes up an increasing amount of disk space. It is important to clear space by clean unnecessary snapshots.

### Procedure

1. Data can only be restored from a snapshot of the table schema, where data exists in a backup. Backup your schema with the following command:
```
cqlsh -e "DESC SCHEMA" > <schema_name.cql>
```
For example:
```
cqlsh -e "DESC SCHEMA" > db_schema.cql
```

2. Take a snapshot, including every keyspace you want to backup.
```
nodetool snapshot <KEYSPACE_NAME>
```
For example:
```
nodetool snapshot mykeyspace
```

The snapshot is created under Scylla data directory ``/var/lib/scylla/data``

It will have the following structure:

``keyspace_name/table_name-UUID/snapshots/snapshot_name``

For example:

``/mykeyspace/team_roster-91cd2060f99d11e6a47a000000000000/snapshots/1487847672222``

From one of the nodes, recreate the schema. Repeat these steps for each node in the cluster.


# Delete Backups
Please note that when taking a new snapshot, the previous snapshots are not deleted. Old snapshots must be deleted in order to clear disk space.

Procedure
Use the nodetool clearsnapshot command to delete all the existing snapshots files from their directory, nodetool clearsnapshot can be applied on a single KEYSPACE or multiple KEYSPACES.

```
nodetool clearsnapshot  <KEYSPACE_NAME>
```

For example:

```
nodetool clearsnapshot mykeyspace
```

The output is:
```
Requested clearing snapshot(s) for [mykeyspace]
```

Note: if an automatic procedure is used to take snapshots, it is recommended that an automatic procedure is used to delete the previous snapshots. Make sure that the data is backed up before deletion.