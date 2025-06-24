FROM golang:1.22-alpine
RUN apk add --no-cache wget
WORKDIR /app
COPY . .
RUN go build -o service1 main.go
EXPOSE 8001
CMD ["./service1"]