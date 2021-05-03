import 'package:flutter/material.dart';
import 'package:tarea_curso/src/pages/chat_page.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ChatPage(),
      ),
    );
  }
}
