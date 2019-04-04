FROM fedora

ENV DISPLAY=:1

RUN dnf install -y \
    xorg-x11-server-Xvfb \
    x11vnc \
    novnc python3-websockify python3-numpy \
    openbox \
    xterm

RUN dnf install -y \
    gcc-c++ nasm mesa-libGL-devel mesa-libGLU-devel SDL2-devel SDL2_mixer-devel libvorbis-devel libvpx-devel gtk2-devel flac flac-devel \
    curl p7zip \
    && dnf clean all

ENTRYPOINT \
    Xvfb :1 -screen 0 ${RESOLUTION:-800x600x16} -fbdir /var/tmp & sleep 1 && \
    x11vnc -display :1 -bg -nopw -forever && \
    websockify -D --web=/usr/share/novnc/ 6080 localhost:5900 && \
    tail -f /dev/null

