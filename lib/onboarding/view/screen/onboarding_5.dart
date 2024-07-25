import 'package:dater/app/view/widget/header.dart';
import 'package:flutter/material.dart';

class OnboardingScreen5 extends StatelessWidget {
  const OnboardingScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: const Header(title: ''), 
      body: body(context)
    ));
  }
  
  Widget body(BuildContext context) {
    return Container();
  }
}