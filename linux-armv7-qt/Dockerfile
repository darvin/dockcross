FROM dockcross/base:latest
MAINTAINER Sergey Klimov "sergey.v.klimov@gmail.com"

ENV DEFAULT_DOCKCROSS_IMAGE dockcross/linux-armv7-qt


ENV TOOLCHAIN_INSTALLER poky-glibc-x86_64-meta-toolchain-qt5-cortexa9hf-neon-toolchain-2.1.3.sh
ENV SDK_DIR /opt/poky

RUN wget https://remarkable.engineering/deploy/sdk/$TOOLCHAIN_INSTALLER
RUN  \
    chmod +x $TOOLCHAIN_INSTALLER && \
    ./$TOOLCHAIN_INSTALLER -y -d $SDK_DIR



# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG IMAGE
ARG VCS_REF
ARG VCS_URL
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name=$IMAGE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=$VCS_URL \
      org.label-schema.schema-version="1.0"

COPY ./entrypoint.sh /opt/poky_entrypoint.sh

ENTRYPOINT ["/opt/poky_entrypoint.sh"]