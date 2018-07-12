
FROM nimbix/ubuntu-cuda-ppc64le:latest
WORKDIR /HelloWorld
ADD . /HelloWorld
ADD url.txt /etc/NAE/url.txt
ADD help.html /etc/NAE/help.html
ADD AppDef.json /etc/NAE/AppDef.json
RUN wget --post-file=/etc/NAE/AppDef.json --no-verbose https://api.jarvice.com/jarvice/validate -O -
RUN g++ -o HelloWorld HelloWorld.cpp

# Expose port 22 for local JARVICE emulation in docker
#EXPOSE 22
#Shell form of CMD
#CMD "/bin/bash -c /HelloWorld/HelloWorld &> /tmp/jt.out"



