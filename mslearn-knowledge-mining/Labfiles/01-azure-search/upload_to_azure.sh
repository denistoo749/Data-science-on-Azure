#!/bin/bash

# Set values for your storage account
subscription_id="8f7788d6-71d8-446d-a35d-902c5dc4943e"
azure_storage_account="azureaistorageaccountt"
azure_storage_key="..."
echo "Creating container..."
az storage container create --account-name $azure_storage_account --subscription $subscription_id --name margies --public-access blob --auth-mode key --account-key $azure_storage_key --output none

echo "Uploading files..."
az storage blob upload-batch -d margies -s data --account-name $azure_storage_account --auth-mode key --account-key $azure_storage_key --output none


