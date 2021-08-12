ARG BUILD_FROM
FROM $BUILD_FROM
#FROM homeassistant/amd64-base:latest

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh; apk add go; go get github.com/bemasher/rtlamr

CMD [ "/bin/bash -x /run.sh" ]
