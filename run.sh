#!bin/bash

docker build -t shaunmoloi/jupiter . && \
docker run -it -p 9000:9000 shaunmoloi/jupiter