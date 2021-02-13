import 'dart:io';

class ServerSocketTcp {
  // properties
  int port;
  ServerSocket serverSocket;

  ServerSocketTcp(this.port);

  // method start server
  void start() async {
    if (serverSocket == null) {
      print('start server at port $port');
      serverSocket =
          await ServerSocket.bind(InternetAddress.anyIPv4, port, shared: true);
      serverSocket.listen(clientConnectHandle);
    }
  }

  // method stop server
  void stop() async {
      if (serverSocket != null) {
        serverSocket.close();
      }
  }

  // method receive client connect
  void clientConnectHandle(Socket socket) {
    socket.listen((onData) {
      var output = String.fromCharCodes(onData).trim();
      print('onData: $output');
    }, onError: (error) {
      print('onError: server error message = $error}');
      if (socket != null) {
        socket.close();
        socket.destroy();
      }
    }, onDone: () {
      print('onDone: connection has terminated');
      if (socket != null) {
        socket.close();
        socket.destroy();
      }
    });
  }
}
