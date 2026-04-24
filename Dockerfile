FROM alpine:latest AS build

RUN apk add --no-cache curl g++ gcc make sed tar

WORKDIR /build

RUN curl -LsS https://github.com/openhamclock/hamclock/archive/refs/tags/v4.23.0.tar.gz | tar -xzpf - -C /build --strip-component 1
RUN make hamclock-web-1600x960
RUN make install

FROM alpine:latest

RUN apk add --no-cache libstdc++ \
 && adduser -D hamclock -u 1000 -g 1000 \
 && mkdir /config \
 && chown 1000:1000 /config \
 && chmod u+rwx,go-rwx /config

USER 1000

COPY --from=build /usr/local/bin/hamclock /usr/local/bin/

CMD [ "/usr/local/bin/hamclock", "-d", "/config" ]
