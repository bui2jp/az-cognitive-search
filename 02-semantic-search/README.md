# Cognitive Search のリソース

RG_NAME=az-cog-search-example
LOCATION=japaneast

# リソースグループ & Cognitive Search

```bash
az group create -l $LOCATION -g $RG_NAME
#az group delete -n $RG_NAME -y
az search service create -n my-search-service001 -g $RG_NAME --sku Free
```

```bash
az login

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
