FROM alpine:latest
RUN apk add --no-cache curl bind-tools
COPY . .
CMD ["./my-freednsclient"]
