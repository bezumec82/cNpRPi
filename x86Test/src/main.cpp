#include <stdint.h>
#include <stdio.h> 
#include <fcntl.h> 
#include <unistd.h>

#include <iostream>
#include <thread>

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

class CallableImpl final: public Callable::Server
{
    public:
    ::kj::Promise<void> print(PrintContext context) override {
        ::std::cout << "Client ask to run callable" << ::std::endl;
        return kj::READY_NOW;
    }
};


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

    ::std::thread client_thread( [&]()
        {
            ::std::cout << "Client thread started" << ::std::endl;
            capnp::EzRpcClient client("127.0.0.1:8000");
            Callable::Client callable = client.getMain< Callable >();
            auto& waitScope = client.getWaitScope();
            /* Setup the request */
            auto request = callable.printRequest();
            /* Send request */
            auto result = request.send();
            auto readPromise = result.ignoreResult();
            readPromise.wait( waitScope );
            ::std::cout << "RPC test passed" << ::std::endl;
        });

    ::std::thread server_thread( [&]()
        {
            capnp::EzRpcServer server( kj::heap<CallableImpl>(), "127.0.0.1:8000");
            auto& waitScope = server.getWaitScope();
            uint port = server.getPort().wait( waitScope );
            // if (port == 0) {
            //     // The address format "unix:/path/to/socket" opens a unix domain socket,
            //     // in which case the port will be zero.
            //     std::cout << "Listening on Unix socket..." << std::endl;
            // } else {
            //     std::cout << "Listening on port " << port << "..." << std::endl;
            // }

            // Run forever, accepting connections and handling requests.
            kj::NEVER_DONE.wait( waitScope );
        });

    client_thread.join();
    server_thread.join();
    return 0;
}