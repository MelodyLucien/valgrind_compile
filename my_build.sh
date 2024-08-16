# Source the environment variables
make clean
make distclean

source my_var.sh

# Run the configure script with the appropriate host and target options
./autogen.sh
./configure --host=arm-linux-gnueabihf --target=arm-linux-gnueabihf

# Build Valgrind
make

make DESTDIR=/home/x23017/code/valgrind_install install
