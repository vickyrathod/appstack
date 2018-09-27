alias docker-compose='docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/rootfs/$PWD" \
    -w="/rootfs/$PWD" \
    docker/compose:1.13.0'

#going to docker-compose
cd $HOME/khaopio

docker-compose down
docker-compose rm
docker-compose -d up
