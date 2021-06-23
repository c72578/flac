# Container image description for building the project.

FROM docker.io/library/alpine

ARG USER=gitlab-ci

RUN apk add git gcc g++ musl-dev make
RUN apk add autoconf automake libtool pkgconfig
RUN apk add gettext xz zip
RUN apk add cmake ninja
RUN apk add libogg-dev

RUN adduser --disabled-password ${USER}
USER ${USER}

WORKDIR /home/${USER}

ADD build-flac.sh .
#CMD /bin/sh build-flac.sh
