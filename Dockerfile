FROM busang/wine

ENV TZ=Asia/Shanghai

RUN /wxdt/wechat_web_devtools/bin/update_package_nw.sh

COPY prepare.sh /tmp/

RUN cd /tmp \
    && chmod +x ./prepare.sh

ENTRYPOINT ['/tmp/prepare.sh']
