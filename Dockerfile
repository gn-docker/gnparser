FROM java:8-jre
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2015-10-30
ENV GNPARSER_VERSION 0.1.0

ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-$GNPARSER_VERSION/gnparser-web-$GNPARSER_VERSION.zip /

ADD https://github.com/GlobalNamesArchitecture/gnparser/releases/download/release-$GNPARSER_VERSION/gnparser-$GNPARSER_VERSION.zip /

RUN unzip gnparser-web-$GNPARSER_VERSION.zip && \
    unzip gnparser-$GNPARSER_VERSION.zip && \
    rm gnparser-web-$GNPARSER_VERSION.zip && \
    rm gnparser-$GNPARSER_VERSION.zip && \
    mv gnparser-web-$GNPARSER_VERSION gnparser-web && \
    mv gnparser-$GNPARSER_VERSION gnparser

COPY start.sh /

ENTRYPOINT ["/start.sh"]
CMD ["web"]
