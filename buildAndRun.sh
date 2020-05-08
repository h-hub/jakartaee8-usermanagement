#!/bin/sh

mvn clean package && docker build -t usermanagement .
docker rm -f usermanagement || true && docker run -p 9090:9090 -p 9443:9443 --name usermanagement usermanagement