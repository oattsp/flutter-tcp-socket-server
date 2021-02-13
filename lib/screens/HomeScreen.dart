import 'package:flutter/material.dart';
import 'package:tcp_socket_server/socket/server_socket.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ServerSocketTcp server = ServerSocketTcp(1024); // using port 1024

  @override
  void initState() {
    // TODO: implement initState
    server.start();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    server.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
