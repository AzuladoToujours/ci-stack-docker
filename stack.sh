#! /bin/bash

mkdir jenkins_data && docker stack deploy --compose-file ci-stack.yml stack

