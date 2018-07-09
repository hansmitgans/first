FROM nimbix/ubuntu-cuda-ppc64le:latest
# FROM gcc:4.9
WORKDIR /HelloWorld
ADD . /HelloWorld
RUN g++ -o HelloWorld HelloWorld.cpp
# Nimbix JARVICE emulation
RUN curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh | bash
# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22
CMD ["./HelloWorld"]
