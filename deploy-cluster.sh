#!/usr/bin/env bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add prom-repo https://prometheus-community.github.io/helm-charts

helm repo update

helm install myprom prom-repo/kube-prometheus-stack
helm install nginx ingress-nginx/ingress-nginx