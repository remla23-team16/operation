#!/usr/bin/env bash

helm repo add prom-repo https://prometheus-community.github.io/helm-charts

helm repo update

helm delete myprom
kubectl delete -f ./k8s/

helm install myprom prom-repo/kube-prometheus-stack
kubectl apply -f ./k8s/