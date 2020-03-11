## Query

```sql
use MiniInsta;
select
	p.UserID
	, u.Username
	, p.ID as PostID
	, count(distinct l.UserID) as likes
	, count(distinct c.ID) as comments
	, count(distinct c.ID)+count(distinct l.UserID) as totals
from Post p
left join User u on p.UserID = u.ID
left join Liking l on p.ID = l.PostID
left join Comment c on p.ID = c.PostID
group by p.ID, p.UserID
order by totals desc, likes desc, comments desc
limit 10;
```

## Result

```
+--------+---------------+--------+-------+----------+--------+
| UserID | Username      | PostID | likes | comments | totals |
+--------+---------------+--------+-------+----------+--------+
|     47 | syepiskopov1a |     75 |     3 |        5 |      8 |
|     56 | hlayborn1j    |     54 |     2 |        6 |      8 |
|    136 | nlount3r      |    388 |     1 |        7 |      8 |
|    153 | dzahor48      |    134 |     1 |        7 |      8 |
|    120 | cbaccup3b     |    381 |     1 |        7 |      8 |
|    189 | kszanto58     |     25 |     2 |        5 |      7 |
|    174 | bseer4t       |    192 |     1 |        6 |      7 |
|    156 | mclere4b      |    409 |     1 |        5 |      6 |
|    152 | dde47         |    289 |     1 |        5 |      6 |
|    194 | mbetke5d      |    113 |     0 |        6 |      6 |
+--------+---------------+--------+-------+----------+--------+
```

## Environment/to replicate

```sh
# Install packages
sudo pacman -S --noconfirm mysql-workbench mariadb-clients
# Run mysql instance
docker run --name db1 -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql
# Delete database
mysql -u root -proot -h 127.0.0.1 -e "drop database if exists MiniInsta;"
# Manually download Scripts, then populate database
cd ~/Download/Scripts/
for f in 1[5-8]*.sql; do echo "$f" && mysql -u root -proot -h 127.0.0.1 < "$f";done
# Run query
mysql -u root -proot -h 127.0.0.1 -e "use MiniInsta; select p.UserID , u.Username , p.ID as PostID , count(distinct l.UserID) as likes , count(distinct c.ID) as comments , count(distinct c.ID)+count(distinct l.UserID) as totals from Post p left join User u on p.UserID = u.ID left join Liking l on p.ID = l.PostID left join Comment c on p.ID = c.PostID group by p.ID, p.UserID order by totals desc, likes desc, comments desc limit 10;"
```
