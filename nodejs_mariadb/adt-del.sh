#!/bin/sh

kubectl delete -f adt-config.yaml
kubectl delete -f adt-db-secret.yaml
kubectl delete -f adt-tls-secret.yaml
kubectl delete -f adt.yaml
kubectl delete -f adt-virtual-server.yaml
