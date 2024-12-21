build-image:
	npm run build
	cd build && caddy file-server --listen :3000

docker-run:
	export DOCKER_DEFAULT_PLATFORM=linux/i386
	docker build -f dockerfiles/debian_mini -t webvm .
	docker images | grep webvm
	docker run -it webvm
