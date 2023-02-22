#!/bin/bash
RGNAME=$(az aks show -g mjg-rg -n mjg-aks --query nodeResourceGroup -o tsv)

az disk create \
  --resource-group $RGNAME \
  --name ssDisk1 \
  --size-gb 5 \
  --zone 1 \
  --query id --output tsv

az disk create \
  --resource-group $RGNAME \
  --name ssDisk2 \
  --size-gb 5 \
  --zone 2 \
  --query id --output tsv

az disk create \
  --resource-group $RGNAME \
  --name ssDisk3 \
  --size-gb 5 \
  --zone 3 \
  --query id --output tsv