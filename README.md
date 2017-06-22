# gnparser

http://parser.globalnames.org

Docker container for the [Global Names Parser's][gnparser] services

Prebuilt container image can be found on [dockerhub]

Usage
-----

To install/update container

```
docker pull gnames/gnparser
```

To run socket server

```
docker run -d -p 0.0.0.0:4334:4334 --name gnparser gnames/gnparser socket
```

To run web server

```
docker run -d -p 0.0.0.0:80:4334 --name gnparser gnames/gnparser web
```


[dockerhub]: https://hub.docker.com/r/gnames/gnparser/
[gnparser]: https://github.com/GlobalNamesArchitecture/gnparser
