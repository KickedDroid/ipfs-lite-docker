FROM golang:latest
 
WORKDIR /IPFS-LITE
 
COPY . /IPFS-LITE

COPY go.mod go.sum ./

RUN go mod download

WORKDIR /IPFS-LITE/examples/litepeer
 
RUN go build -o litepeer .
 
CMD ./litepeer