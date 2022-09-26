FROM alpine:latest

# Update apk packages
RUN apk update && apk upgrade

# Install utilities
RUN apk add --no-cache --update bash git

# Install npm & node (npm depends on node)
RUN apk add --no-cache --update npm

# Install golang binary
COPY --from=golang:1.19.1-alpine3.16 /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

# Setup private go if necessary
RUN go env -w GOPRIVATE=$GOPRIVATE

# Install serverless framework
RUN npm install -g serverless

# Entrypoint
ENTRYPOINT []
# ENTRYPOINT ["/bin/sh"] # For interactive mode