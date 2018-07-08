FROM gcc:4.9
WORKDIR /HelloWorld
ADD . /HelloWorld
RUN g++ -o HelloWorld HelloWorld.cpp
# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22
CMD ["./HelloWorld"]
