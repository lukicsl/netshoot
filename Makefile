
# Build Vars
IMAGENAME=lukics/netshoot
VERSION=0.1


build-armv7:
	    @docker build --platform linux/armv7 -t ${IMAGENAME}:${VERSION} .
build-all:
		@docker buildx build --platform linux/armv7 --output "type=image,push=false" --file ./Dockerfile .
push:
	 	@docker push ${IMAGENAME}:${VERSION} 
all: build-all push


		
