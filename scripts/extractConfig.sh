#!/bin/bash

cd k8s-local
:
RESULT=$(vagrant ssh -c "sudo cat /home/vagrant/.kube/config" kmaster)

echo "$RESULT" > ../kubeconfig