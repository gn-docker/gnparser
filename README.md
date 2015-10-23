# gnparser

Docker container for the [Global Names Parser's][gnparser] web service

Prebuilt container image can be found on [dockerhub]

Usage
-----

```
docker pull gnames/gnparser
docker run -d -p 80:9000 --name gnparser gnames/gnparser
```

[dockerhub]: https://hub.docker.com/r/gnames/gnparser/
[gnparser]: https://github.com/GlobalNamesArchitecture/gnparser
