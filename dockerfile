FROM golang:1.18

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .

# Build the Go app
RUN go build -o main ./cmd

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
