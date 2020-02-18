#!/bin/bash

docker build -t ideonate/jupyter-base ./base-notebook/

docker build --build-arg BASE_CONTAINER=ideonate/jupyter-base -t ideonate/jupyter-minimal ./minimal-notebook/



docker build --build-arg BASE_CONTAINER=ideonate/jupyter-minimal -t ideonate/jupyter-scipy ./scipy-notebook/

docker build --build-arg BASE_CONTAINER=ideonate/jupyter-scipy -t ideonate/jupyter-datascience ./datascience-notebook/


docker build --build-arg BASE_CONTAINER=ideonate/jupyter-scipy -t ideonate/jupyter-tensorflow ./tensorflow-notebook/


docker build --build-arg BASE_CONTAINER=ideonate/jupyter-minimal -t ideonate/jupyter-r ./r-notebook/



docker push ideonate/jupyter-base:latest
docker push ideonate/jupyter-minimal:latest
docker push ideonate/jupyter-scipy:latest
docker push ideonate/jupyter-datascience:latest
docker push ideonate/jupyter-r:latest
