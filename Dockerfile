FROM java:8
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2015-10-26
ENV SBT_VERSION 0.13.8
ENV SBT_JAR https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar


ADD  $SBT_JAR /usr/local/bin/sbt-launch.jar
COPY files/sbt /usr/local/bin/sbt

RUN echo "==> fetch all sbt jars from Maven repo..."       && \
    echo "==> [CAUTION] this may take several minutes!!!"  && \
    wget https://github.com/GlobalNamesArchitecture/gnparser/archive/master.zip -O gnparser-master.zip && \
    unzip gnparser-master.zip && \
    cd gnparser-master && \
    sbt web/stage

CMD ["/gnparser-master/web/target/universal/stage/bin/gnparser-web"]
