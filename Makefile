download-upx:
	rm -f upx
	axel -n 30 https://github.com/upx/upx/releases/download/v3.94/upx-3.94-amd64_linux.tar.xz
	tar -Jxf upx-3.94-amd64_linux.tar.xz
	cp upx-3.94-amd64_linux/upx .
	rm -rf upx-3.94-amd64_linux.tar.xz upx-3.94-amd64_linux
build:
	docker build -t sqlwwx/golang-builder:latest .
publish:
	docker push sqlwwx/golang-builder
