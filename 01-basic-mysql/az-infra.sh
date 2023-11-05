# rg
RG_NAME=az-cognitive-search-example
LOCATION=japaneast
az group create -l $LOCATION -g $RG_NAME
#az group delete -n $RG_NAME -y

# cognitive search 
az search service create -n my-search-service001 -g $RG_NAME --sku Basic
# sku
#  free 50M
#  basic 2GB
#  standard 50GB

# mysql
#az mysql server create -l $LOCATION -g $RG_NAME -n mysql-server001 -u mysqladmin -p P@ssword@123 --sku-name GP_Gen5_2

# sql server
az sql server create --name sqlserver-example-001 -g $RG_NAME -l $LOCATION --admin-user sqladmin --admin-password P@ssword@123
az sql db create -g $RG_NAME -s sqlserver-example-001 -n exampledb1 -e GeneralPurpose -f Gen5 -c 2
