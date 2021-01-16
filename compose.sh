#! /bin/bash

mkdir jenkins_data && docker-compose -f ci-compose.yml up -d
