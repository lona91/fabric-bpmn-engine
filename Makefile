install-local:
	./scripts/startKmaster.sh
	./scripts/extractJoinCommand.sh
	./scripts/startKworker.sh
	./scripts/extractConfig.sh

clean-local:
	./scripts/destroyAll.sh
	rm -rf ./k8s-local/join-command.sh
	rm -rf kubeconfig