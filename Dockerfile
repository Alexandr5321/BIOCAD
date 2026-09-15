FROM alpine:3.20 AS builder

RUN apk add --no-cache gcc musl-dev make

WORKDIR /app

COPY Makefile .
COPY app/ ./app/

RUN make

FROM alpine:3.20

COPY --from=builder /app/app/helloworld /helloworld

EXPOSE 32777

ENTRYPOINT ["/helloworld"]
