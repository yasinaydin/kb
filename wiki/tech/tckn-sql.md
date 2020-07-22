## Install PSQL

<https://wiki.archlinux.org/index.php/PostgreSQL>

```sh
kur postgresql

sudo -iu postgres
initdb -D /var/lib/postgres/data
exit

sudo systemctl enable --now postgresql

sudo -iu postgres
createuser --interactive
# yasin
# y (for superuser)
exit

createdb yasin
```

## Speedup PSQL

<https://pgtune.leopard.in.ua/#/>

```sh
psql -c 'SHOW config_file'
sud code /var/lib/postgres/data/postgresql.conf
sudo systemctl restart postgresql
```

## Import DB

```sh
tar zxvf mernis.tar.gz
cd mernis
psql yasin < data_dump.sql
```

## DB Structure

Delete `misc` column:
```sql
ALTER TABLE "citizen" DROP "misc";
```

Rename `national_identifier` column to `tckn`:
```sql
ALTER TABLE "citizen"
ALTER "national_identifier" TYPE text,
ALTER "national_identifier" DROP DEFAULT,
ALTER "national_identifier" SET NOT NULL;
ALTER TABLE "citizen" RENAME "national_identifier" TO "tckn";
COMMENT ON COLUMN "citizen"."tckn" IS '';
COMMENT ON TABLE "citizen" IS '';
```

Make `tckn` field as `BIGINT`:
```sql
ALTER TABLE citizen ALTER COLUMN tckn TYPE bigint USING tckn::bigint
```

Remove duplicates:
```sql
DELETE FROM citizen WHERE ctid IN (
  SELECT ctid FROM (
    SELECT *, ctid, row_number() OVER ( PARTITION BY tckn ORDER BY ctid )
    FROM citizen
  ) s WHERE row_number >= 2
)
```

Make `tckn` as index:
```sql
DROP INDEX "citizen_national_identifier_idx_";
ALTER TABLE "citizen"
ADD CONSTRAINT "citizen_national_identifier_idx_" PRIMARY KEY ("tckn");
```

Remove `uid` col:
```sql
ALTER TABLE "citizen"
DROP "uid";
COMMENT ON TABLE "citizen" IS '';
```

Add `tckn_mom` and `tckn_dad` cols:
```sql
ALTER TABLE "citizen"
ADD "tckn_mom" bigint NULL,
ADD "tckn_dad" bigint NULL;
COMMENT ON TABLE "citizen" IS '';
```
