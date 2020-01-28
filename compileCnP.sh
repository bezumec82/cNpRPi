export NORM="\e[39m"    ; #echo -e "${NORM}Normal output";
export RED="\e[31m"     ; #echo -e "${RED}Red output";
export GRN="\e[32m"     ; #echo -e "${GRN}Green output";
export CYN="\e[36m"     ; #echo -e "${CYN}Cyan output";
export MAG="\e[35m"     ; #echo -e "${MAG}Magenta output";
export YEL="\e[33m"     ; #echo -e "${YEL}Yellow output";
export BLU="\e[34m"     ; #echo -e "${BLU}Blue output";

echo -e "${YEL} Compiling schema $1 ${NORM}"

if [[ `head -c1 $1` == "@" ]]; then
    echo -e "${GRN} Schema file have ID ${NORM}"
else
    echo -e "${RED} Schema file have no ID ${NORM}"
    rm /tmp/CnPcompile
    #save current source - just in case
    cp $1 "$1.`date`"
    echo "`capnp id`;" >> /tmp/CnPcompile
    echo "" >> /tmp/CnPcompile
    cat $1 >> /tmp/CnPcompile
    echo "" >> /tmp/CnPcompile
    cat /tmp/CnPcompile
    cp /tmp/CnPcompile $1
fi

echo -e "${YEL} Compiling to `dirname $1` ${NORM}"
capnp compile --verbose -oc++:`dirname $1` --src-prefix=`dirname $1` $1