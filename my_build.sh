# Source the environment variables
source my_var.sh

# Navigate to the Valgrind source directory
cd /path/to/valgrind

# Run the configure script with the appropriate host and target options
./autogen.sh
./configure --host=arm-linux-gnueabihf --target=arm-linux-gnueabihf

# Build Valgrind
make

make DESTDIR=/home/x23017/code/valgrind_install install
