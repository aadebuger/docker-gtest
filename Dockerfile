from ubuntu
run apt-get update
run apt-get -y install build-essential curl
run apt-get -y install libboost-dev libboost-test-dev libboost-program-options-dev libboost-system-dev libboost-filesystem-dev libevent-dev automake libtool flex bison pkg-config g++ libssl-dev
workdir /tmp
run apt-get -y install curl
run apt-get -y install  libgoogle-glog-dev
run apt-get -y install git
run git clone https://github.com/google/googletest
workdir /tmp/googletest
run g++ -isystem /tmp/googletest/include -I/tmp/googletest \
    -pthread -c /tmp/googletest/src/gtest-all.cc
workdir /home
run git clone https://github.com/redis/hiredis
workdir /home/hiredis
run make && make install
