#!/usr/bin/env bash

########################
# include the magic
########################

. ./demo-magic.sh

clear

DEMO_PROMPT="dev@kubeday:~/demos$ "
pe "kubectl-vsphere logout"
pe "kubectl-vsphere login --server 192.168.198.1 --insecure-skip-tls-verify"
pe "kubectl config get-contexts"
pe "kubectl config use-context carrefour"
pe "kubectl get all"
pe "clear"
pe "less hello-kubernetes/yaml/hello-kubernetes.custom-message.yaml"
pe "kubectl apply -f hello-kubernetes/yaml/hello-kubernetes.custom-message.yaml"
pe "watch kubectl get all"
