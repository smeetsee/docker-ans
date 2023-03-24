FROM ubuntu:focal

RUN sudo apt update && \
    sudo apt upgrade -y && \
    sudo apt install -y cmake make build-essential doxygen git git-lfs curl net-tools srecord rlwrap autoconf automake libxmu-dev gcc-msp430 default-jdk ant openjdk-11-jdk python3-pip python3-serial libncurses-dev p7zip-full libusb-dev libgconf-2-4

RUN mkdir ~/toolchain && \
    cd ~/toolchain && \
    wget https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2 && \
    sudo tar -xjf gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2 -C /usr/share/ && \
    sudo ln -fs /usr/share/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc /usr/bin/arm-none-eabi-gcc && \
    sudo ln -fs /usr/share/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-g++ /usr/bin/arm-none-eabi-g++ && \
    sudo ln -fs /usr/share/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gdb /usr/bin/arm-none-eabi-gdb && \
    sudo ln -fs /usr/share/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-size /usr/bin/arm-none-eabi-size && \
    sudo ln -fs /usr/share/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-objcopy /usr/bin/arm-none-eabi-objcopy && \
    sudo ln -fs /usr/lib/x86_64-linux-gnu/libncurses.so.6 /usr/lib/x86_64-linux-gnu/libncurses.so.5 && \
    sudo ln -fs /usr/lib/x86_64-linux-gnu/libtinfo.so.6 /usr/lib/x86_64-linux-gnu/libtinfo.so.5