FROM busang/wine

ENV TZ=Asia/Shanghai

RUN /wxdt/wechat_web_devtools/bin/update_package_nw.sh

WORKDIR /wxdt/wechat_web_devtools

COPY prepare.sh /tmp/

ENTRYPOINT ['/tmp/prepare.sh']
