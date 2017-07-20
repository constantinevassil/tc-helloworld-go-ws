FROM       scratch
MAINTAINER Constantine Vassil <constantine@mobiledatabooks.com>
ADD        tc-helloworld-go-ws tc-helloworld-go-ws
EXPOSE     8080
ENTRYPOINT ["/tc-helloworld-go-ws"]
