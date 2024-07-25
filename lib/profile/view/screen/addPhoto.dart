import 'package:dater/app/view/widget/header.dart';
import 'package:flutter/material.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: const Header(title: 'Add Photos'),
      body: body(context),
    ));
  }
  
  Widget body(BuildContext context) {
    return GridView.builder(itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 15, crossAxisSpacing: 15), itemBuilder: ((context, index) {
        return Image.asset('assets/images/picture.jpg', fit: BoxFit.cover,);
      }));
  }
}