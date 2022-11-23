# rg
RG_NAME=az-cognitive-search-example
LOCATION=japaneast
az group create -l $LOCATION -g $RG_NAME
#az group delete -n $RG_NAME -y

# cognitive search
az search service create -n my-search-service001 -g $RG_NAME --sku Free

# mysql
az mysql server create -l $LOCATION -g $RG_NAME -n mysql-server001 -u mysqladmin -p P@ssword@123 --sku-name GP_Gen5_2
