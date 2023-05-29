#!/usr/bin/env bash

helm repo add prom-repo https://prometheus-community.github.io/helm-charts

helm repo update

helm install myprom prom-repo/kube-prometheus-stack