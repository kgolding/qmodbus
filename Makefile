
build: clean
	docker run --rm -it -v ${PWD}:/app  -w /app $(shell docker build -q .) \
		./build.sh

clean:
	rm -rf ./build
