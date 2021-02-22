#include <windows.h>
#include <cstdio>
#include <winsock.h>
#include <string>
#include "threadsafe_queue.cpp"
#include "json.hpp"

using json = nlohmann::json;
struct client_functions{
    SOCKET client;
    threadsafe_queue<std::string> &queue;
};

// our thread for incoming commands
void WINAPI receive_cmds(LPVOID lpParam)
{
    printf("thread created\r\n");
    auto *funcs = (client_functions*)lpParam;
    // set our socket to the socket passed in as a parameter
    //SOCKET current_client = (SOCKET)lpParam;
    SOCKET current_client = funcs->client;
    auto &shared_queue = funcs->queue;

    // buffer to hold our incoming data
    char buf[512];
    // buffer to hold our sent data
    char sendData[100];
    // for error checking
    int res;

    // our recv loop
    while(true)
    {
        res = recv(current_client,buf,sizeof(buf),0); // recv cmds

        Sleep(10);

        if(res == 0)
        {
            printf("No data received, closing socket\n");
            closesocket(current_client);
            ExitThread(0);
        }
        if(res == -1){
            printf("Client disconnected\n");
            closesocket(current_client);
            ExitThread(0);
        }
        buf[res] = '\0';
        try {
            auto input_str = std::string(buf);
            auto input = json::parse(input_str);

            if (input["messageType"] == "send") {
                auto data = input["data"];
                shared_queue.push(data);

                json output;
                output["messageType"] = "push_ack";
                std::string s = output.dump();
                strcpy(sendData, s.c_str());
            } else if (input["messageType"] == "get") {
                std::string data;
                if (shared_queue.try_pop(data)) {
                    strcpy(sendData, data.c_str());
                } else {
                    json output;
                    output["messageType"] = "err";
                    output["errorMessage"] = "queue empty";
                    strcpy(sendData, output.dump().c_str());
                }
            } else {
                json output;
                output["messageType"] = "err";
                output["errorMessage"] = "invalid command";
                strcpy(sendData, output.dump().c_str());
            }
            Sleep(10);
            send(current_client, sendData, sizeof(sendData), 0);

            // clear buffers
            strcpy(sendData, "");
            strcpy(buf, "");
        }catch(const nlohmann::detail::parse_error& e){
            printf("Exception caught:\n");
            printf(e.what());
            closesocket(current_client);
            ExitThread(0);
        }
    }
}

int main()
{
    printf("Starting up multi-threaded TCP server\r\n");

    // our masterSocket(socket that listens for connections)
    SOCKET sock;

    // for our thread
    DWORD thread;

    WSADATA wsaData;
    sockaddr_in server{};

    // start winsock
    int ret = WSAStartup(0x101,&wsaData); // use highest version of winsock avalible

    if(ret != 0)
    {
        return 0;
    }

    // fill in winsock struct ...
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=INADDR_ANY;
    server.sin_port=htons(123); // listen on telnet port 23

    // create our socket
    sock=socket(AF_INET,SOCK_STREAM,0);

    if(sock == INVALID_SOCKET)
    {
        return 0;
    }

    // bind our socket to a port(port 123)
    if( bind(sock,(sockaddr*)&server,sizeof(server)) !=0 )
    {
        return 0;
    }
    threadsafe_queue<std::string> shared_queue{};

    // listen for a connection
    if(listen(sock,5) != 0)
    {
        return 0;
    }

    // socket that we snedzrecv data on
    SOCKET client;

    sockaddr_in from{};
    int fromlen = sizeof(from);

    // loop forever
    while(true)
    {
        // accept connections
        client = accept(sock,(struct sockaddr*)&from,&fromlen);
        printf("Client connected\r\n");

        client_functions funcs = {client, shared_queue};

        // create our recv_cmds thread and parse client socket as a parameter
        CreateThread(NULL, 0, reinterpret_cast<LPTHREAD_START_ROUTINE>(receive_cmds), &funcs, 0, &thread);
    }

    // shutdown winsock
    closesocket(sock);
    WSACleanup();

    // exit
    return 0;
}
