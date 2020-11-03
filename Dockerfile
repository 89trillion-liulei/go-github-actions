FROM golang
MAINTAINER  liulei
WORKDIR /go/src/git.liebaopay.com/cm/cm_ad_free
COPY . .
RUN go build main.go
EXPOSE 20020 20021 20022
CMD ["./main","./config_local.ini",":20020",":20021",":20022"]