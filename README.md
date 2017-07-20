
# Building Minimal Docker Containers for Go Applications

There official containers for Golang can be quite large. 

When Go apps are build statically with all libraries built in their size 
is kept at the minimum.


## helloworld-go-ws

git clone https://github.com/topconnector/helloworld-go-ws.git

cd helloworld-go-ws

Test on Mac:

```bash
CGO_ENABLED=0 go build -a -tags netgo -ldflags '-w' .
./helloworld-go-ws
```
Started, serving at 8080

Open in browser:

http://localhost:8080

Test with Docker:

```bash
docker run -p 8080:8080 topconnector/helloworld-go-ws:v1
```
