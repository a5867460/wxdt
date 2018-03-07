FROM busang/wine

ENV TZ=Asia/Shanghai

RUN /wxdt/wechat_web_devtools/bin/update_package_nw.s \

WORKDIR /wxdt/wechat_web_devtools
