FROM --platform=${TARGETPLATFORM} ubuntu:20.04
ARG TARGETARCH

ARG PRSQL_VERSION=2.3.2
ARG S6_VERSION=1.22.1.0
ARG S6_ARCH=aarch64

RUN apt-get update && apt-get install -y ca-certificates \
  && rm -rf /var/lib/apt/lists/*
ADD https://github.com/sysown/proxysql/releases/download/v${PRSQL_VERSION}/proxysql_${PRSQL_VERSION}-ubuntu20_${TARGETARCH}.deb /tmp/
RUN dpkg -i /tmp/proxysql_${PRSQL_VERSION}-ubuntu20_${TARGETARCH}.deb && rm /tmp/proxysql_${PRSQL_VERSION}-ubuntu20_${TARGETARCH}.deb

ADD fs /
ADD s6 /etc/

## s6-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_VERSION}/s6-overlay-${S6_ARCH}.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-${S6_ARCH}.tar.gz -C / && rm /tmp/s6-overlay-${S6_ARCH}.tar.gz

# DEBUG RUN apt-get update && apt-get install mysql-client -y
ENTRYPOINT [ "/init" ]
