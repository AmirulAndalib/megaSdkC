sudo su
sudo apt-get -y update && sudo apt-get -y upgrade && \
sudo apt-get install -y software-properties-common && \
sudo apt-get install -y python3.10 python3-pip python3-lxml aria2 \
tzdata xz-utils curl pv jq \
locales git make g++ gcc automake zip unzip \
autoconf libtool libcurl4-openssl-dev \
libsodium-dev libssl-dev libcrypto++-dev libc-ares-dev \
libsqlite3-dev libfreeimage-dev swig libboost-all-dev \
libpthread-stubs0-dev zlib1g-dev libpq-dev libffi-dev
