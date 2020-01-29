#include <thread>
#include <iostream>

#include <capnp/ez-rpc.h>

#include "schema.capnp.h"

#define SERVER_ADDR "192.168.1.200:8000"

int main( int , char** )
{
    ::std::cout << "Starting executing client" << ::std::endl;
    ::std::thread client_thread( [&]()
        {
            ::std::cout << "Client thread started" << ::std::endl;
            capnp::EzRpcClient client(SERVER_ADDR);
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
    client_thread.join();

    ::std::cout << "Client finished" << ::std::endl;
    return 0;
}