FROM       scratch
MAINTAINER Constantine Vassil <constantine@mobiledatabooks.com>
ADD        helloworldws helloworldws
EXPOSE     8080
ENTRYPOINT ["/helloworldws"]
