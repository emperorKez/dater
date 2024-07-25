import 'package:dater/chat/view/screen/chat.dart';
import 'package:dater/discover/view/screen/discover_screen.dart';
import 'package:dater/discover/view/screen/user_switch_card.dart';
import 'package:dater/likes/view/screen/likes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dater dating app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade200),
        useMaterial3: true,
      ),
      home: UserCardScreen(),
    );
  }
}
