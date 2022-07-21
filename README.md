## this repository was made to train a little more my knowledge in docker
_____

### requirement
[DOCKER](https://docs.docker.com/desktop/install/windows-install/)

[DOCKER COMPOSE](https://docs.docker.com/compose/install/)
_____
### Description
- This docker will run the BRAVE browser without the need to install it locally on your machine
___
### RUN
- ``` docker-composer up -d --build ```

- ``` docker exec -t brave_docker brave-browser  --disable-dev-shm-usage --no-sandbox --disable-gpu```