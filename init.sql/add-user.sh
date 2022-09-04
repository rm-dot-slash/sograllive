#!/bin/bash
set -e


psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER sqluser;
	GRANT ALL PRIVILEGES ON DATABASE SOGRAL_LIVE TO sqluser;


EOSQL
