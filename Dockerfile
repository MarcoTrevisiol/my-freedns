FROM alpine:latest
RUN apk add --no-cache curl bind-tools
COPY "my-freednsclient" .
CMD ["./my-freednsclient"]
