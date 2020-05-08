#!/bin/bash

cd k8s-local
:
COMMAND=$(vagrant ssh -c "sudo kubeadm token create --print-join-command" kmaster)

echo "#!/bin/bash" > ../k8s-local/join-command.sh

echo "$COMMAND" | grep 'kubeadm join' >> ../k8s-local/join-command.sh