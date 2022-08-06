export PYTHONWARNINGS=ignore
git clone https://github.com/meganz/sdk.git -b master ~/home/sdk \
&& cd ~/home/sdk && rm -rf .git \
&& autoupdate -fIv && ./autogen.sh \
&& ./configure --disable-silent-rules --enable-python --with-sodium --disable-examples --with-python3 \
&& make -j$(nproc --all) \
&& cd bindings/python/ && python3 setup.py bdist_wheel \
&& cd dist && pwd
