FROM busang/wine

ENV TZ=Asia/Shanghai

COPY ./prepare.sh /tmp/

RUN /wxdt/wechat_web_devtools/bin/update_package_nw.sh && \
    apt install -y libgconf-2-4 libxss1

RUN cd /tmp \
    && chmod +x ./prepare.sh
