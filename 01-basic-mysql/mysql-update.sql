-- update myexample01 
-- set 
-- remark1 = 'パンジー　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。',
-- remark2 = 'さぼてん　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。',
-- remark3 = 'ワイン　Azure Cognitive Search 旧称 Azure Search は、Web、モバイル、エンタープライズ アプリケーションに、プライベートで異種のコンテンツに対するリッチな検索エクスペリエンスを組み込むためのインフラストラクチャ、API、およびツールを開発者に提供するクラウド検索サービスです。'
-- ;
update myexample01 set remark1 = 'This is a green panda.' where myid = 100000004;
update myexample01 set remark2 = 'This is a red panda.' where myid = 100000004;
update myexample01 set remark3 = 'これは青いバンダです' where myid = 100000004;