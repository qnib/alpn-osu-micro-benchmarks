FROM qnib/alpn-cluster

RUN apk update && apk upgrade && \
    apk add make && \
    wget -qO- http://www.nersc.gov/assets/Trinity--NERSC-8-RFP/Benchmarks/July12/osu-micro-benchmarks-3.8-July12.tar |tar xf - -C /opt/ && \
    cd /opt/osu-micro-benchmarks-3.8-July12 && \
    ./configure && make && make install && \
    rm -rf /var/cache/apk/*
  

