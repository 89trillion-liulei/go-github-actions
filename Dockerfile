FROM golang
MAINTAINER  liulei
WORKDIR /go/src/iwproject
COPY . .
RUN go build main.go
EXPOSE 20020 20021 20022
CMD ["./main","./config_local.ini",":20020",":20021",":20022"]