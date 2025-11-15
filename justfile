image-name := "blog-image"
container-name := "blog-container"
host_port := "4321"
internal_port := "4321"

build:
    docker build -t {{image-name}}:latest  .

run:
    docker run -d --name {{container-name}} -p {{host_port}}:{{internal_port}} {{image-name}}:latest

stop:
    docker stop {{container-name}}
    docker rm {{container-name}}
