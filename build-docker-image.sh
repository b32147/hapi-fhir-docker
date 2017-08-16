#!/bin/sh

mvn package && \
  docker build -t b32147/hapi-fhir-docker .

