FROM openjdk:8-jre
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2018-06-22

ENV GNPARSER_VERSION 1.0.1-20180807_1337_CEST__SHA_2b9b36322297-SNAPSHOT

# ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-$GNPARSER_VERSION/gnparser-$GNPARSER_VERSION.zip /
ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-1.0.1/gnparser-1.0.1-20180807_1337_CEST__SHA_2b9b36322297-SNAPSHOT.zip

RUN unzip gnparser-$GNPARSER_VERSION.zip && \
    rm gnparser-$GNPARSER_VERSION.zip && \
    mv gnparser-$GNPARSER_VERSION gnparser


ENTRYPOINT ["/gnparser/bin/gnparser"]
CMD ["web"]
