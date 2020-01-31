### Agenda
The purpose of the project is to connect PRi to CUDA throw C'n'P RPC mechanism.
The idea is to augment embedded platform computation capabilities by utilizing x86 GPU. 
In current state just CUDA is supported. It seems that this is necessary to make some abstraction from execution mechanism and add OpenCL computation platform.

### Build
To build project create 'build' directory in project root folder :
'''
mkdir build
cd build
cmake ..
make
'''
Executable for RPi side will be build to the folder : '''RPiOut'''.
Executable for x86 side will be build to the folder : '''x86out'''.

### Usage
This project is created in Ubuntu14.04. Don't torture yourself - use Linux to work with embedded Linux. I'm ready to accept Win10 WSL as the solution, when first Yocto port for it will be created.

Folder '''CapNprotoLib''' contains C'n'P library.
Inside two scripts provided :
'''CapNprotoLib/Build_CapNProto_RPi.sh''' - cross compiles library for the remote side.
'''CapNprotoLib/Build_CapNProto_x86.sh''' - compiles and installs library for the x86 side.

Script 'compileCnP.sh' compiles c++/h pair from schema. It adds ID if necessary.
Usage : 
'''./compileCnP.sh ./resource/schema.capnp'''

Script 'startRPiDebug.sh' copies executable to RPi and starts GDB server with this executable.
Usage :
'''./startRPiDebug.sh ./RPiOut/<EXECUTABLE_NAME>.out'''
You should setup this file for your RPi - look variables inside.

TODO : make ini parser - pass all parameters throw '''config.ini'''file.

In file '''.vscode/launch.json''' there are two debug configurations - you can debug local server and remote client at once.
At present moment it seems impossible to pass '''miDebuggerServerAddress'''  and '''miDebuggerPath''' parameters from the outside. User should setup it before use.
'''miDebuggerPath''' is the full (relative not accepted) to the GDB for the remote side.
This project doesn't contain any usable '''tasks.json''', learn Cmake already! But you can copy it from my other projects. 

