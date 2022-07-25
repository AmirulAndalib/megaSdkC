export PYTHONWARNINGS=ignore
export MEGA_SDK_VERSION="3.12.3"
git clone https://github.com/meganz/sdk.git --depth=1 -b v$MEGA_SDK_VERSION ~/home/sdk \
&& cd ~/home/sdk && rm -rf .git \
&& autoupdate -fIv && ./autogen.sh \
&& ./configure --disable-silent-rules --enable-python --with-sodium --disable-examples \
&& make -j$(nproc --all) \
