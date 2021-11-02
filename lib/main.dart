import 'package:flutter/material.dart';
import 'package:to_do_app/Screens/home_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To Do App',
      home: HomeScreen(),
    );
  }
}
