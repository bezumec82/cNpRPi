export NORM="\e[39m"    ; #echo -e "${NORM}Normal output";
export RED="\e[31m"     ; #echo -e "${RED}Red output";
export GRN="\e[32m"     ; #echo -e "${GRN}Green output";
export CYN="\e[36m"     ; #echo -e "${CYN}Cyan output";
export MAG="\e[35m"     ; #echo -e "${MAG}Magenta output";
export YEL="\e[33m"     ; #echo -e "${YEL}Yellow output";
export BLU="\e[34m"     ; #echo -e "${BLU}Blue output";

export RMT_IP=192.168.1.72
export RMT_USR=pi
export RMT_HOST_PASS=pi
export RMT_HOST=${RMT_USR}@${RMT_IP}
export TGT_EXE_PTH=/home/pi/remote-debug
export GDB_PORT=2345

export EXECTBL=$1

if [ ! $EXECTBL ]; then
    echo -e "${RED} Executable name to debug doesn't passed.${NORM}"
    exit 1
fi

echo -e "${CYN}Copying '${PWD}/${EXECTBL}' to the Raspberry : ${TGT_EXE_PTH}.${NORM}"
sshpass -p "${RMT_HOST_PASS}" \
scp ${PWD}/${EXECTBL} ${RMT_HOST}:${TGT_EXE_PTH}/`basename ${EXECTBL}`

echo -e "${GRN}Starting GDB server with port ${GDB_PORT}${NORM}"
sshpass -p "${RMT_HOST_PASS}" ssh -tt ${RMT_HOST} << EOF
    killall -9 gdbserver && killall -9 gdbserver
    gdbserver :${GDB_PORT} ${TGT_EXE_PTH}/`basename ${EXECTBL}`
EOF

echo -e "${MAG}Start this script : \nstartDebug.sh executAble.out${NORM}"