# docker build . -t cpp_test:1

FROM gcc:latest

COPY . /usr/src/cpp_test

WORKDIR /usr/src/cpp_test

RUN g++ -o Test main.cpp

CMD [ "./Test" ]

# docker run --rm -it cpp_test:1
