import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(context),
    ));
  }
  
  body(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        Container(
          width: 200, 
          height: 200, 
          child: Image.asset('assets/logo/LOGO-01.svg'),
        ), 
        const SizedBox(height: 15,),
        Text('Please follow these club riles when using this app', style: theme.textTheme.bodyLarge,),
        const SizedBox(height: 15,),
        GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 25, crossAxisSpacing: 25), 
        children: [
gridItem('Be yourself', 'Upload only your photo, age and bio'), gridItem('Be cool', 'Stay chilled and treat others with respect and dignity'), 
gridItem('Be safe', 'Dont give out personal info too quickly'), 
gridItem('Be active', 'Report others rude or bad behaviour actively')
        ],),
        const SizedBox(height: 15,),

        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), child: const Text('I Understand'))
      ],
    );
  }

  Widget gridItem(String caption, String content){
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        Text(caption, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), 
        const SizedBox(height: 15,), 
        Text(content, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),), 
      ],
    );
  }
}