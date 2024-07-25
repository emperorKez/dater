import 'package:flutter/material.dart';

class ChatMeScreen extends StatefulWidget {
  const ChatMeScreen({super.key});

  @override
  State<ChatMeScreen> createState() => _ChatMeScreenState();
}

class _ChatMeScreenState extends State<ChatMeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(child: Text('Under Construction, check later'))),
    );
  }
}