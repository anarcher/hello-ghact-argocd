FROM golang:1.13.1-alpine as builder
COPY main.go .
RUN go build -o /app main.go

FROM alpine:3.9
CMD ["./app"]
COPY --from=builder /app .
