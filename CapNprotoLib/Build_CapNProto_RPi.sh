reset
export NORM="\e[39m"    ; #echo -e "${NORM}Normal output";
export RED="\e[31m"     ; #echo -e "${RED}Red output";
export GRN="\e[32m"     ; #echo -e "${GRN}Green output";
export CYN="\e[36m"     ; #echo -e "${CYN}Cyan output";
export MAG="\e[35m"     ; #echo -e "${MAG}Magenta output";
export YEL="\e[33m"     ; #echo -e "${YEL}Yellow output";
export BLU="\e[34m"     ; #echo -e "${BLU}Blue output";


export BASE_PTH=/media/constantine/Work/BOARDS/RASPBERRY
export LIB_PTH=${BASE_PTH}/workspace/CapNProto/CapNprotoLib
if [ ! -d ${BASE_PTH} ] | [ ! -d ${LIB_PTH} ]; then
    echo -e "${RED}! Pathes should be setted !${NORM}" 
    exit 1
else
    cd ${LIB_PTH}
fi

export LIB_NAME=capnproto-c++-0.7.0
export INSTALL_PTH=${LIB_PTH}/CnPlibRPiInstall
export BUILD_PTH=${LIB_PTH}/RPiBuild

rm -rf ${LIB_PTH}/${LIB_NAME}
rm -rf ${INSTALL_PTH}
rm -rf ${BUILD_PTH}

export PRI_TOOLS_PTH=${BASE_PTH}/tools-master
export COMPILER_PTH=${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/bin
export CROSS_COMPILE=${COMPILER_PTH}/arm-linux-gnueabihf-
export CC=${CROSS_COMPILE}gcc
export CXX=${CROSS_COMPILE}g++

#export COMPILER_PTH=${BASE_PTH}/GCC/raspberry-pi-gcc-binary/gcc-9.1.0/bin
#export CROSS_COMPILE=${COMPILER_PTH}/arm-linux-gnueabihf-
#export CC=${CROSS_COMPILE}gcc-9.1
#export CXX=${CROSS_COMPILE}g++-9.1

##############
### Get source
##############
if [ ! -f ${LIB_PTH}/${LIB_NAME}.tar.gz ]; then
    echo -e "${YEL}Downloading CnP library : ${NORM}"
    curl -O https://capnproto.org/${LIB_NAME}.tar.gz    
else
    echo -e "${YEL}CnP already downloaded : ${NORM}"
    stat ${LIB_PTH}/${LIB_NAME}.tar.gz
fi
tar zxf ${LIB_PTH}/${LIB_NAME}.tar.gz

#############
### Check GCC
#############
if [ ! -f ${CC} ]; then
    echo -e "${RED}GCC compiler is not found at : ${CC}${NORM}"
    exit 1
fi
if [ ! -f ${CXX} ]; then
    echo -e "${RED}G++ compiler is not found at : ${CXX}${NORM}"
    exit 1
fi

# ./configure --with-external-capnp  \
# --build=x86 --host=armv7 \
# --target='arm-linux-gnueabihf' --prefix=${CNP_LIB_PTH}/out
# make ARCH=arm CROSS_COMPILE=${GCC_PTH}/arm-linux-gnueabihf-

#########
### BUILD
#########
mkdir ${BUILD_PTH}
cd ${BUILD_PTH}

echo -e "${MAG}Running CMake in dir : ${PWD}${NORM}"
cmake \
-D BUILD_TESTING=OFF \
-D CMAKE_SYSTEM_NAME=Linux \
-D CMAKE_SYSTEM_PROCESSOR=arm \
-D CMAKE_C_COMPILER=${CC} \
-D CMAKE_C_COMPILER_WORKS=1 \
-D CMAKE_CXX_COMPILER=${CXX} \
-D CMAKE_CXX_COMPILER_WORKS=1 \
\
-D CMAKE_SYSROOT=${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot \
-D CMAKE_FIND_ROOT_PATH=${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf \
-D CMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
-D CMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
-D CMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
-D CMAKE_FIND_ROOT_PATH_MODE_PACKAGE=ONLY \
-D CMAKE_LIBRARY_PATH=${CMAKE_SYSROOT}/usr/lib64 \
-D CROSS_COMPILE_INCLUDES=${CMAKE_SYSROOT}/usr/include/linux \
\
-D CMAKE_INSTALL_PREFIX=${INSTALL_PTH} \
${LIB_PTH}/${LIB_NAME}

#-D CMAKE_RUNTIME_OUTPUT_DIRECTORY=${INSTALL_PTH} \
#-D CMAKE_LIBRARY_OUTPUT_DIRECTORY=${INSTALL_PTH} \
#-D CMAKE_ARCHIVE_OUTPUT_DIRECTORY=${INSTALL_PTH} \
#../

make -j8 ARCH=arm CROSS_COMPILE=${GCC_PTH}/arm-linux-gnueabihf- \
DESTDIR=${INSTALL_PTH}
make -j8 ARCH=arm CROSS_COMPILE=${GCC_PTH}/arm-linux-gnueabihf- install

