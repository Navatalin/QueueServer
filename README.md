# QueueServer
Simple C++ message queue server that stores strings and uses JSON to wrap requests

Clients can send messages and get messages from a concurrent queue.
All messages are wrapped in JSON

To send a message to the server use the following JSON object:
{
  "messageType":"send",
  "data":"Any string data"
}

To get a message from the queue send

{
  "messageType":"get"
}

The server is roughly based on the following code:
http://www.rohitab.com/discuss/topic/26991-cc-how-to-code-a-multi-client-server-in-c-using-threads/

Json Library from:
https://github.com/nlohmann/json
