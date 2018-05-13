
echo "*************Docker running in $1 mode******************"

# Replace with your app cloned path
APPLICATION_PATH=/home/gklsan/workspace/practice
APP_ENV=$1
RUN_TYPE=$2

#Stop the docker 
docker stop book_registry

#Remove the docker 
docker rm book_registry

#Build the docker 
docker build -t book_registry -f docker/Dockerfile .

#Run the docker 
docker run -it -p 9000:9000 --rm -e RAILS_ENV=$APP_ENV -e RACK_ENV=$APP_ENV -e RUN_TYPE=$RUN_TYPE --volume=$APPLICATION_PATH/book_registry:/opt/book_registry/ --volume=$APPLICATION_PATH/book_registry_gems:/usr/local/bundle/ --name book_registry book_registry

echo "*************Docker End******************"