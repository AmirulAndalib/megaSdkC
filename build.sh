export PYTHONWARNINGS=ignore
git clone https://github.com/meganz/sdk.git --depth=1 -b v$master ~/home/sdk \
&& cd ~/home/sdk && rm -rf .git \
&& autoupdate -fIv && ./autogen.sh \
&& ./configure --disable-silent-rules --enable-python --with-sodium --disable-examples  \
&& make -j$(nproc --all) \
&& cd bindings/python/ && python3 setup.py bdist_wheel \
&& cd dist && pwd
