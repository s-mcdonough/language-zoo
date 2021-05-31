FROM ubuntu:21.04

LABEL maintainer="Sean McDonough <sean.stanley.mcdonough@gmail.com>" \
      license="MIT"

WORKDIR /pen

RUN echo "Installing packages " \
      && export DEBIAN_FRONTEND=noninteractive  \
      && apt-get update \
      && apt-get install -y \
            lsb-release \
            apt-utils \
            software-properties-common \
            rustc \
            libstdc++6 \
            gcc-11 \
            g++-11 \
            g++-11-arm-linux-gnueabi \
            binutils-arm-linux-gnueabi \
            clang-12 \
            libc6-dev-armel-cross \
            gnat \
      && apt-get autoremove --purge -y \
      && apt-get autoclean -y \
      && rm -rf /var/cache/apt/*