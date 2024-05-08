# Build 1
FROM golang:alpine AS fullcycle

WORKDIR /app/go

COPY . /app/go

RUN CGO_ENABLED=0  go build -o /app/go/src main.go

# Multi Stage build with scratch
FROM scratch

WORKDIR /app/go

COPY --from=fullcycle /app/go/src .

CMD ["./src"]