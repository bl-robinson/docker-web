build:
	docker build . -t container-registry.k8s.home.blrobinson.uk/docker-web:latest
push:
	docker push container-registry.k8s.home.blrobinson.uk/docker-web:latest