## Command:
```
docker run  -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd -e uid=$(id -u) -e gid=$(id -g) -e DISPLAY=unix$DISPLAY --privileged busang/wxdt /tmp/prepare.sh
```
