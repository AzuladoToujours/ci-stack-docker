#! /bin/bash

mkdir data_jenkins && docker stack deploy --compose-file ci-stack.yml stack

