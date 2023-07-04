FROM golang:1.20

WORKDIR /app

# cache modules
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o /usr/local/bin/app ./printheadlines.go

CMD ["app"]
