import 'package:chat/messages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color.fromARGB(190, 1, 34, 54);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: primaryColor,
        ),
        // primarySwatch: Colors.blueGrey,
      ),
      home: Messages(),
    );
  }
}
