build-image:
	npm run build
	cd build && caddy file-server --listen :3000
