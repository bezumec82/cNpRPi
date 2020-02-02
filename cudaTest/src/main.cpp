#include "main.hpp"
#include "Tools.h"

class CallableImpl final: public Callable::Server
{
    public:
    ::kj::Promise<void> print(PrintContext context) override {
        PRINTF( MAG, "Client ask to run CUDA calculations" );
        simpleAssert();
        return kj::READY_NOW;
    }
};

int main( int , char** ) {
    PRINTF( YEL, "Starting executing server" );
    ::std::thread server_thread( [&]()
        {
            capnp::EzRpcServer server( kj::heap<CallableImpl>(), SERVER_ADDR);
            auto& waitScope = server.getWaitScope();
            uint port = server.getPort().wait( waitScope );
            // Run forever, accepting connections and handling requests.
            kj::NEVER_DONE.wait( waitScope );
        });
    server_thread.join();
    return 0;
}
