FROM alpine:latest
RUN mkdir -p /file_server
RUN apk add --update --no-cache python3 go
RUN  GOBIN=/file_server go install github.com/google/go-jsonnet/cmd/jsonnet@latest
WORKDIR /file_server
ENTRYPOINT ["python3","-m", "http.server"]