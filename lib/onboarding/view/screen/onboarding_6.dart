import 'package:dater/app/view/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen6 extends StatefulWidget {
  const OnboardingScreen6({super.key});

  @override
  State<OnboardingScreen6> createState() => _OnboardingScreen6State();
}

class _OnboardingScreen6State extends State<OnboardingScreen6> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  String gender = 'female';
  String sexuality = 'straight';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: const Header(title: 'Personal'),
      body: ListView(shrinkWrap: true, 
      padding: const EdgeInsets.symmetric(horizontal: 15), 
      children: [
        inputContainer(label: 'My First name is', controller: firstnameController, hint: 'This is how it will appear on Dater'), 
        const SizedBox(height: 10,),
        inputContainer(label: 'My Birthday is', controller: dobController, hint: 'Your age will be public'),
        const SizedBox(height: 10,),
        genderContainer(),
        const SizedBox(height: 10,),
        sexualityContainer()

      ],
      ),
    ));
  }

  Widget inputContainer({required String label, required TextEditingController controller, required String hint}){
    return Container(decoration: BoxDecoration(border: Border.all(width: 2), borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(10), 
    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), 
      const SizedBox(height: 10,),
      TextFormField(controller: controller, decoration: const InputDecoration(border: UnderlineInputBorder()),),
      const SizedBox(height: 10,),
      Text(hint, style: const TextStyle(fontSize: 12, ),), 
    ],),
    );
  }
  
  Widget genderContainer() {
    return Container(decoration: BoxDecoration(border: Border.all(width: 2), borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(10), 
    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text('Gender'), 
      const SizedBox(height: 15,),
      Radio(value: 'female', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'male', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'Non-Binary', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'Transgender Female', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'Transgender Male', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'Transgender', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        })
    ]
    ));
  }


  Widget sexualityContainer() {
    return Container(decoration: BoxDecoration(border: Border.all(width: 2), borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(10), 
    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text('Sexuality'), 
      const SizedBox(height: 15,),
      Radio(value: 'straight', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'gay', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
      Radio(value: 'bisexual', groupValue: gender, onChanged: (val){
        setState(() {
        gender = val!;          
        });
        }),
     
    ]
    ));
  }
}