ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
COPY rtlamr /
RUN chmod a+x /rtlamr

CMD [ "/run.sh" ]
