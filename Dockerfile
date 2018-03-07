FROM busang/wine

COPY ./prepare.sh /tmp/

RUN cd /tmp \
    && chmod +x ./prepare.sh

ENTRYPOINT ["/tmp/prepare.sh"]
