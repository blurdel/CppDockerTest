FROM gcc:latest

WORKDIR /sandbox

COPY main.cpp /sandbox

RUN g++ -o Test main.cpp

CMD [ "./Test" ]
