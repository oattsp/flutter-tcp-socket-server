import 'package:flutter/material.dart';
import 'package:tcp_socket_server/screens/HomeScreen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socket Server',
      home: HomeScreen(),
    );
  }
}
