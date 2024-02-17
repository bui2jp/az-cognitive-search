# Cognitive Search のリソース

# リソースグループ

```bash
RG_NAME=az-cog-search-example
LOCATION=japaneast
az login
az group create -l $LOCATION -g $RG_NAME
#az group delete -n $RG_NAME -y
```

# Cognitive Search

```bash
az search service create -n my-search-service001 -g $RG_NAME --sku basic
# ベクトル検索は freeプランでも利用可能
# semantic利用したい場合は basic
```

```bash
STORAGE_ACCOUNT_NAME=mydatasource001
# azure storage account作成
az storage account create \
  --name $STORAGE_ACCOUNT_NAME \
  --resource-group $RG_NAME \
  --location $LOCATION \
  --sku Standard_RAGRS \
  --kind StorageV2 \
  --allow-blob-public-access false

# azure storage countainer作成
CONTAINER_NAME="test-container001"
az storage container create \
    --name $CONTAINER_NAME \
    --account-name $STORAGE_ACCOUNT_NAME
    --auth-mode login
```

# テストデータ(json or csv ... etc)を azure blob に用意する

```

```
