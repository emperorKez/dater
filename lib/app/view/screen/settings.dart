import 'package:dater/app/view/widget/header.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: const Header(title: 'Settings'), 
      body: body(context),
    ));
  }
  
  body(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15), 
      shrinkWrap: true, 
      children: [
        // personalInfoContainer(),
        const SizedBox(height: 15,), 
        // phoneNumberContainer(),
        const SizedBox(height: 15,),
        // locationContainer(),

        const SizedBox(height: 15,), 
      ],
    );
  }
}