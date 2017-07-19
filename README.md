# helloworld-go-ws

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
docker run -p 8080:8080 topconnector/helloworld-gws:v1
```
