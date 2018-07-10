
FROM nimbix/ubuntu-cuda-ppc64le:latest
WORKDIR /HelloWorld
ADD . /HelloWorld
RUN g++ -o HelloWorld HelloWorld.cpp
# Nimbix JARVICE emulation
RUN curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh | bash
# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22
#Shell form of CMD
CMD "/bin/bash -c /HelloWorld/HelloWorld &> /tmp/jt.out"



