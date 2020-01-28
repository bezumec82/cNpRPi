# Ready package could be taken here
http://raspbian.raspberrypi.org/raspbian/pool/main/c/capnproto/


# Install Cap'n'proto at x86 side :
git clone https://github.com/sandstorm-io/capnproto.git
cd capnproto/c++
autoreconf -i
./configure
make -j8 check
sudo make install



# Install 