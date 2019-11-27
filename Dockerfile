FROM golang

RUN go get github.com/gorilla/mux

RUN go get github.com/andygrunwald/go-jira

WORKDIR /go/src/github.com/oms-services/jira

ADD . /go/src/github.com/oms-services/jira

RUN go install github.com/oms-services/jira

ENTRYPOINT jira

EXPOSE 3000