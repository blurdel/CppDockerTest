# CppDockerTest
Demo Jenkins pipleine for building CPP using Docker

#### DSO files
* Jenkinsfile
* Dockerfile

#### Docker commands
    # build image
    docker build -t cpp-test:1.0 .

    # build/run container
    docker run --rm -it cpp-test:1.0
