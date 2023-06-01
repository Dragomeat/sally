FROM golang:1.20-alpine
ADD . /go/src/app
WORKDIR /go/src/app
RUN go install go.uber.org/sally@latest
EXPOSE 8080
CMD sally -yml sally.yaml -port 8080
