# ADMINISTRATIVE STACK IN DOCKER SWARM/DOCKER-COMPOSE

## PREPARE ENVIRONMENT

```bash 
# Create a carpet for the jenkins_data
mkdir jenkins_data

# Get the docker path and copy it.
which docker
```

Docker path is unique in each docker installation, so run the command and change it in the Jenkins-service.

```yaml
      volumes:
        - type: bind
          source: $HOME/jenkins_data
          target: /var/jenkins_home
        - [which docker OUTPUT]:/usr/bin/docker
        - /var/run/docker.sock:/var/run/docker.sock
```




## DOCKER SWARM STACK
```bash
# Run the stack config file
docker stack deploy --compose-file ci-stack.yml ci-stack

# Delete the stack
docker stack rm ci-stack
```


## DOCKER-COMPOSE

```bash
# Run the docker-compose config file
docker-compose -f ci-compose.yml up -d

# Delete the compose
docker-compose -f ci-compose.yml down
```
