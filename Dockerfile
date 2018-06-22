FROM openjdk:8-jre
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2018-06-22

ENV GNPARSER_VERSION 0.4.5

ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-$GNPARSER_VERSION/gnparser-$GNPARSER_VERSION.zip /

RUN unzip gnparser-$GNPARSER_VERSION.zip && \
    rm gnparser-$GNPARSER_VERSION.zip && \
    mv gnparser-$GNPARSER_VERSION gnparser


ENTRYPOINT ["/gnparser/bin/gnparser"]
CMD ["web"]
