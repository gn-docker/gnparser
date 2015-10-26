FROM java:8
MAINTAINER Dmitry Mozzherin
ENV LAST_FULL_REBUILD 2015-10-26
ENV SBT_VERSION 0.13.8
ENV SBT_JAR https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar


ADD  $SBT_JAR /usr/local/bin/sbt-launch.jar
COPY files/sbt /usr/local/bin/sbt

RUN apt-get install git && \
    echo "==> fetch all sbt jars from Maven repo..."       && \
    echo "==> [CAUTION] this may take several minutes!!!"  && \
    git clone https://github.com/GlobalNamesArchitecture/gnparser.git app && \
    cd app && \
    sbt stage

CMD ["/app/web/target/universal/stage/bin/gnparser-web"]
