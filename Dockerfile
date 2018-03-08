FROM busang/wine:tmp

ENV TZ=Asia/Shanghai

COPY ./prepare.sh /tmp/

RUN /wxdt/wechat_web_devtools/bin/update_package_nw.sh && \
    apt install -y libgconf-2-4 libxss1 libcanberra-gtk-module libcanberra-gtk3-module libcanberra-gtk-module:i386

RUN cd /tmp \
    && chmod +x ./prepare.sh

ENTRYPOINT ["/wxdt/wechat_web_devtools/bin/wxdt"]
