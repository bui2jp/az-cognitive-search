# az-cognitive-search

## create az resources
cognitive search と mysql
```
sh az-infra.sh
```

## データ作成 (mysql)
```
docker run -v $PWD:/home -w /home -it --rm mysql mysql -h mysql-server001.mysql.database.azure.com -u mysqladmin@mysql-server001 -pP@ssword@123

# ファイル実行
mysql> source create.sql
```

## データ作成 (sqlcmd)
```
docker run -it --rm -v $PWD:/home -w /home mcr.microsoft.com/mssql-tools bash

```

## index作成 (cognitive search)
```
CS_HOST=https://my-search-service001.search.windows.net
CS_KEY=0G9Epy4BMlQsEVc1hiTwrcFZjhZhkuX1DcMpwoIwh8AzSeCAf8xk
```

データソース定義
```
curl $CS_HOST'/datasources?api-version=2020-06-30-Preview' \
-H 'Content-Type: application/json' \
-H 'api-key: '$CS_KEY \
-d @cs_index/data-source.json
```

インデックスマッピング定義
```
curl $CS_HOST'/indexes?api-version=2020-06-30-Preview' \
-H 'Content-Type: application/json' \
-H 'api-key: '$CS_KEY \
-d @cs_index/index-def.json
```

インデックス作成を実行
```
curl $CS_HOST'/indexers?api-version=2020-06-30' \
-H 'Content-Type: application/json' -H 'api-key: '$CS_KEY \
-d @cs_index/indexer.json
```

## 登録 (by rest api)

```
curl $CS_HOST'/indexes/example-mysql-ix/docs/index?api-version=2020-06-30' \
-H 'Content-Type: application/json' -H 'api-key: '$CS_KEY \
-d @cs_index/sampledata1.json
```

## 検索 (by rest api)
```
curl $CS_HOST
```
