#include <stdint.h>
#include <stdio.h> 
#include <fcntl.h> 
#include <unistd.h>

#include <iostream>

/* Look  Build_CapNProto_x86.sh
 * /usr/local/include/--> */
#include <capnp/message.h>
#include <capnp/ez-rpc.h>
#include <capnp/serialize-packed.h>
#include <capnp/serialize-text.h>
#include <capnp/serialize.h>

#include "test.capnp.h"

void writeDate(int fd) {
    ::capnp::MallocMessageBuilder message;
    Date::Builder date = message.initRoot<Date>();
    date.setYear(2020);
    date.setMonth(1);
    date.setDay(24);
    writePackedMessageToFd(fd, message);
}

void printDate(int fd) {
    ::capnp::PackedFdMessageReader message(fd);
    Date::Reader date = message.getRoot<Date>();
    ::std::cout << "Year : "  << int( date.getYear() )  << ::std::endl;
    ::std::cout << "Month : " << int( date.getMonth() ) << ::std::endl;
    ::std::cout << "Day : "   << int( date.getDay() )   << ::std::endl;
}

int main (int , char ** )
{
    int fd = open( "./CnPtest", 
        O_RDWR | O_CREAT , 
        S_IRUSR | S_IWUSR );
    perror( "" );
    writeDate(fd);
#if (0)
    close(fd);
    fd = open( "./CnPtest", 
        O_RDWR | O_CREAT , 
        S_IRUSR | S_IWUSR );
    perror( "" );
#else
    lseek(fd, 0, SEEK_SET);
#endif
    printDate(fd);
    close(fd);
    return 0;
}