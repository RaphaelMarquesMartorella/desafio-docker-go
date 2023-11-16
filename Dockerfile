FROM golang:latest AS builder

WORKDIR /usr/src/app

COPY go.mod .
COPY main.go .

RUN go mod download
RUN go build -o /usr/src/app/main .

# Final stage
FROM alpine:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/main .

CMD ["./main"]
