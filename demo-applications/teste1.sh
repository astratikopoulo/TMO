#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="dev@kubeday:~/demos$ "

pe "kubectl-vsphere logout"
pe "kubectl vsphere login --insecure-skip-tls-verify --server wcp.corp.local -u administrator@vsphere.local"
pe "kubectl config get-contexts"
pe "kubectl config use-context gss-wcp"
pe "kubectl get all"
pe "clear"
pe "kubectl run nginx --image=nginxinc/nginx-unprivileged --port=8080 --restart=Never"
pe "watch kubectl get all"
pe "kubectl describe pod/nginx"
pe "clear"
pe "kubectl expose pod nginx --target-port 8080 --port 8080 --type LoadBalancer"
pe "watch kubectl get all"
pe "cat allow-all-networkpolicy.yaml"
pe "clear"
pe "kubectl apply -f allow-all-networkpolicy.yaml"
