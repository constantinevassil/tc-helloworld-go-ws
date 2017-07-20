
# Building Minimal Docker Containers for Go Applications

There official containers for Golang can be quite large. 

When Go apps are build statically with all libraries built in their size 
is kept at the minimum.


## tc-helloworld-go-ws

git clone https://github.com/topconnector/tc-helloworld-go-ws.git 

cd tc-helloworld-go-ws

chmod=+x bld.bash

Test on Mac:

```bash
CGO_ENABLED=0 go build -a -tags netgo -ldflags '-w' .
./tc-helloworld-go-ws
```
Started, serving at 8080

Open in browser:

http://localhost:8080

Test with Docker:

```bash
docker run -p 8080:8080 topconnector/tc-helloworld-go-ws:v1
```
