# Build the image.
.PHONY: build
build:
	docker build -t essentials-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop essentials-container
	docker rm essentials-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm essentials-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the interactive container.
.PHONY: run
run:
	docker run -i -t --name essentials-container essentials-image