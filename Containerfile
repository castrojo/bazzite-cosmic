ARG MAJOR_VERSION="${CENTOS_MAJOR_VERSION:-stream10}"

FROM ghcr.io/ublue-os/bazzite-gnome:stable

COPY build.sh /tmp/build.sh

RUN chmod +x /tmp/build.sh &&\
    /tmp/build.sh && \
    dnf clean all && \
    ostree container commit

RUN bootc container lint
