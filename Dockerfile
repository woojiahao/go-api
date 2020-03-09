FROM golang:1.14.0-buster

WORKDIR /app
COPY . .

RUN go mod download
RUN go build src/main.go

EXPOSE 8080

CMD ./main
