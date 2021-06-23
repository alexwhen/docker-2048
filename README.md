# docker-2048

simple is better

a smaller docker version of 2048

Base on gabrielecirulli/2048 (https://github.com/gabrielecirulli/2048)

Base on nginx

#dockerfile

    FROM nginx:latest

    COPY 2048 /usr/share/nginx/html

    EXPOSE 80

# run the docker container with your own build

    git clone https://github.com/alexwhen/docker-2048.git
    docker build -t "docker-2048" .
    docker run -d -p 8080:80 docker-2048

# run the docker container by pulling the image directly

    docker run -d -p 8080:80 alexwhen/docker-2048

# Access the game

    http://127.0.0.1:8080
