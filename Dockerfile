#golang v1.8が準備されているimageを利用
FROM golang:1.8.0 

#$GOPATHに/go/srcを追加．この後srcの下にアプリケーションフォルダを作成する為
ENV GOPATH $GOPATH:/go/src 

#とりあえず更新
RUN apt-get update && \
    apt-get upgrade -y

#revelインストール
RUN go get github.com/revel/revel && \
    go get github.com/revel/cmd/revel

RUN mkdir /go/src/revel_app

#revelはポート9000で実行されるのでポート9000の開放
EXPOSE 9000
