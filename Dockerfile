FROM openjdk:8-jre
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2015-10-30

ENV GNPARSER_VERSION 0.4.0

ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-$GNPARSER_VERSION/gnparser-$GNPARSER_VERSION.zip /

RUN unzip gnparser-$GNPARSER_VERSION.zip && \
    rm gnparser-$GNPARSER_VERSION.zip && \
    mv gnparser-$GNPARSER_VERSION gnparser


ENTRYPOINT ["/gnparser/bin/gnparser"]
CMD ["web"]
