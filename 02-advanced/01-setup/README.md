Create the SG role:

```bash
docker exec -it postgresdb_playground psql -U local -d instagram -c "CREATE ROLE sg;"
```

Create the Instagram DB:

```bash
docker exec -i postgresdb_playground  pg_restore -U local -d instagram < ./ig.sql
```