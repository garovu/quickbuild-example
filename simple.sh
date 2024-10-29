#!/bin/bash

# Run the docker build command
docker build -t quickbuild .

# Run the quickbuil docker container for testing only
docker run -d --name quickbuild-server -p 8810:8810 quickbuild
