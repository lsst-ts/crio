ulimit -s unlimited
opkg update
opkg install git gcc gcc-symlinks g++ g++-symlinks make binutils coreutils nano gcc-dev curl openssl-dev bzip2-dev libffi-dev perl nano
wget https://www.python.org/ftp/python/3.6.7/Python-3.6.7.tgz 
tar -xzf Python-3.6.7.tgz 
cd Python-3.6.7
./configure --prefix=/usr/local/python3.6 --enable-optimizations
make install
cd ~
rm Python-3.6.7.tgz
rm -rf Python-3.6.7
cp /usr/local/python3.6/lib/libpython3.6m.a /usr/local/python3.6/lib/libpython3.6m.so
cp /usr/local/python3.6/lib/libpython3.6m.a /usr/local/python3.6/lib/libpython3.6m.so.1.0
ln -s /usr/local/python3.6/lib/libpython3.6m.so /usr/lib
ln -s /usr/local/python3.6/lib/libpython3.6m.so.1.0.0 /usr/lib
ln -s /usr/local/python3.6/bin/python3 /usr/bin/python3
ln -s /usr/local/python3.6/bin/pip3 /usr/bin/pip3
ln -s /usr/local/python3.6/include/python3.6m /usr/include
pip3 install nifpga
git clone https://github.com/lsst-ts/ts_xml.git
git clone https://github.com/lsst-ts/ts_sal.git
git clone https://github.com/lsst-ts/ts_opensplice.git
cp ts_sal/setup.env .
