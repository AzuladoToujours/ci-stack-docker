# ADMINISTRATIVE STACK IN DOCKER SWARM/DOCKER-COMPOSE

## PREPARE ENVIRONMENT

```bash 
# Get the docker path and copy it.
which docker
```

Docker path is unique in each docker installation, so run the command and change it in the Jenkins-service.

### CI-COMPOSE

```yaml
      volumes:
        - type: bind
          source: $HOME/jenkins_data
          target: /var/jenkins_home
        - [which docker OUTPUT]:/usr/bin/docker
        - /var/run/docker.sock:/var/run/docker.sock
```

### CI-STACK

```yaml
     volumes:
        - jenkins_data:/var/jenkins_home
        - [which docker OUTPUT]:/usr/bin/docker
        - /var/run/docker.sock:/var/run/docker.sock
```

## DOCKER SWARM STACK
```bash
# Run the stack config file
sh stack.sh

# Delete the stack
docker stack rm stack
```


## DOCKER-COMPOSE

```bash
# Run the docker-compose config file
sh compose.sh

# Delete the compose
docker-compose -f ci-compose.yml down
```
