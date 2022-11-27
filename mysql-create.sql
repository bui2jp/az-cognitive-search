DROP DATABASE IF EXISTS testdb01;
-- CREATE DATABASE IF NOT EXISTS testdb01 CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE DATABASE IF NOT EXISTS testdb01 CHARACTER SET utf8;
USE testdb01;

DROP TABLE IF EXISTS myexample01;
CREATE TABLE myexample01 (
    myid      INT AUTO_INCREMENT,
    remark1      TEXT           ,
    remark2      TEXT           ,
    remark3      TEXT           ,
    PRIMARY KEY (myid)
) AUTO_INCREMENT = 100000001;

insert into myexample01 (remark1) value ('桃太郎');

insert into myexample01 (myid) select 0 from myexample01; -- +1 = 2
insert into myexample01 (myid) select 0 from myexample01; -- 2*2 = 4
insert into myexample01 (myid) select 0 from myexample01; -- 4*2 = 8
insert into myexample01 (myid) select 0 from myexample01; -- 8*2 = 16
insert into myexample01 (myid) select 0 from myexample01; -- 
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01;
-- insert into myexample01 (myid) select 0 from myexample01; -- 13万 (131072)
-- insert into myexample01 (myid) select 0 from myexample01; -- 25
-- insert into myexample01 (myid) select 0 from myexample01; -- 50
-- insert into myexample01 (myid) select 0 from myexample01; -- 100万 (1048576)
-- insert into myexample01 (myid) select 0 from myexample01; -- 200万
-- insert into myexample01 (myid) select 0 from myexample01; -- 400万
-- insert into myexample01 (myid) select 0 from myexample01; -- 800万 8388608

update myexample01 
set 
remark1 = 'パンジー　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。',
remark2 = 'さぼてん　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。',
remark3 = 'ワイン　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。'
;

select count(*) from myexample01;

--
SELECT @@character_set_database, @@collation_database;
-- end of file
