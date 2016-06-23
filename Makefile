IMAGE_NAME = lua:5.3
CONTAINER_NAME = lua
SOURCE = /home/israel/Projects/Lua/src
TARGET = /var/lua/src

build:
	docker build -t $(IMAGE_NAME) .

shell:
	docker run -it --rm --name $(CONTAINER_NAME) -v $(SOURCE):$(TARGET) -w $(TARGET) $(IMAGE_NAME) /bin/bash

hello:
	docker run -it --rm --name $(CONTAINER_NAME) -v $(SOURCE):$(TARGET) -w $(TARGET) $(IMAGE_NAME) python $(FILENAME)
