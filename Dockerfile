FROM alpine:3.20 AS builder

RUN apk add --no-cache gcc musl-dev make

WORKDIR /app

COPY Makefile app/helloworld.c ./

RUN make

FROM scratch

COPY --from=builder /app/helloworld .

ENTRYPOINT [ "./helloworld" ]
