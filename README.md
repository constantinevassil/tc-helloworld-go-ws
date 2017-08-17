
# Building Minimal Docker Containers for Go Applications

There official containers for Golang can be quite large. 

When Go apps are build statically with all libraries built in their size 
is kept at the minimum.

## Mac OS X package installer

Visit https://golang.org/dl/

Download the package file, open it, and follow the prompts to install the Go tools. The package installs the Go distribution to /usr/local/go.

The package should put the /usr/local/go/bin directory in your PATH environment variable. You may need to restart any open Terminal sessions for the change to take effect.

## Test your installation
Check that Go is installed correctly by setting up a workspace and building a simple program, as follows.

Create your workspace directory, $HOME/go. (If you'd like to use a different directory, you will need to set the GOPATH environment variable; see How to Write Go Code for details.)

## Install Dep

dep is a prototype dependency management tool for Go. It requires Go 1.7 or newer to compile.

https://github.com/golang/dep

```bash
brew install dep
brew upgrade dep
```

Run "dep init": creates vendor directory with dependencies

## tc-helloworld-go-ws

```bash
cd cd $HOME/go/src
git clone https://github.com/topconnector/tc-helloworld-go-ws.git 
cd tc-helloworld-go-ws
dep init
chmod +x ./bld.bash
./bld.bash
./tc-helloworld-go-ws
```

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
