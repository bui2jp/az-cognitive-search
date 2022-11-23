# az-cognitive-search

## create az resources
cognitive search と mysql
```
sh az-infra.sh
```

## データ作成
```
docker run -v $PWD:/home -w /home -it --rm mysql mysql -h mysql-server001.mysql.database.azure.com -u mysqladmin@mysql-server001 -pP@ssword@123

# ファイル実行
mysql> source my-create.sql
```
