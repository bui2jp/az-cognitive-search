DROP DATABASE IF EXISTS testdb01;
CREATE DATABASE IF NOT EXISTS testdb01 CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE testdb01;

DROP TABLE IF EXISTS myexample01;
CREATE TABLE myexample01 (
    myid      INT AUTO_INCREMENT,
    birth_date  DATE            ,
    full_name   VARCHAR(30)     ,
    first_name  VARCHAR(14)     ,
    last_name   VARCHAR(16)     ,
    hire_date   DATE            ,
    remark      TEXT            ,
    remark2      TEXT           ,
    remark3      TEXT           ,
    PRIMARY KEY (myid)
) AUTO_INCREMENT = 100000001;

insert into myexample01 (full_name) value ('桃太郎');

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
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01;
insert into myexample01 (myid) select 0 from myexample01; -- 100万 (1048576)
-- insert into myexample01 (myid) select 0 from myexample01; -- 200万
-- insert into myexample01 (myid) select 0 from myexample01; -- 400万
-- insert into myexample01 (myid) select 0 from myexample01; -- 800万 8388608

update myexample01 
set 
 full_name = concat('なまえ：', myid),
 remark = '吾輩は猫である',
 remark2 = '柿食えば鐘が鳴るなり法隆寺',
 remark3 = '言語アナライザー は、テキスト アナライザーの固有の種類であり、対象言語の言語規則を使用して字句解析を実行します。'
 ;

select count(*) from myexample01;

--
SELECT @@character_set_database, @@collation_database;
-- end of file
