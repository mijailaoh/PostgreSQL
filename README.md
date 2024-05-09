# PostgreSQL
Create Containerized Postgres Database and also launch PgAdmin

## Set Env
Please config db.env

## RUN
docker-compose up -d

## STOP
docker-compose down -v

## CREATE (backup)
docker exec -i postgres_db pg_dump -U admin tmk_db > backup/restore.sql

# RESTORE (backup)
docker exec -i postgres_db psql -U admin -d tmk_db < backup/backup.sql

## CONFIG (dbeaver)
1. HOST: localhost
2. PORT: 5432
3. DB_NAME: <.env_POSTGRES_DB>
4. USER: <.env_POSTGRES_USER>
5. PASS: <.env_POSTGRES_PASSWORD>

## CONFIG (pgadmin)
1. Login
  2. USER: <.env_PGADMIN_DEFAULT_EMAIL>
  3. PASS: <.env_PGADMIN_DEFAULT_PASSWORD>
4. Connection (server)
  5. HOST: postgres (container-db-name)
  6. PORT: 5432
  7. DB_NAME: <.env_POSTGRES_DB>
  8. USER: <.env_POSTGRES_USER>
  9. PASS: <.env_POSTGRES_PASSWORD>
