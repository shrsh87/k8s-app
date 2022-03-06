#!/bin/sh

kubectl create -f adt-config.yaml
kubectl create -f adt-db-secret.yaml
kubectl create -f adt-tls-secret.yaml
kubectl create -f adt.yaml
kubectl create -f adt-virtual-server.yaml
