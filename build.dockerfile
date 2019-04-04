FROM fedora

RUN dnf groupinstall -y "Development Tools" && \
    dnf install -y gcc-c++ nasm mesa-libGL-devel mesa-libGLU-devel SDL2-devel SDL2_mixer-devel libvorbis-devel libvpx-devel gtk2-devel flac flac-devel \
    git git-svn \
    curl p7zip \
    && dnf clean all

ENTRYPOINT tail -f /dev/null

