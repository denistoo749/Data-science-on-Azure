@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=8f7788d6-71d8-446d-a35d-902c5dc4943e
set azure_storage_account=azureaistorageaccounts
set azure_storage_key=ItPKN20haYoIZyx5v+W+BR5H1Rw5gRQwivptV7mTsfDQds5QTy5w4MZxa8Gn0bZy/TfZCpxnc6aG+ASttQF4WQ==

echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
