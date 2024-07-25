import 'package:dater/app/view/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboadingScreen3 extends StatefulWidget {
  const OnboadingScreen3({super.key});

  @override
  State<OnboadingScreen3> createState() => _OnboadingScreen3State();
}

class _OnboadingScreen3State extends State<OnboadingScreen3> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  body() {
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        Container(
          height: MediaQuery.of(context).size.width,
          color: Colors.red,
        ), 
        const SizedBox(height: 20,),
        Image.asset('assets/logo/LOGO-02.svg'),
        const SizedBox(height: 15,),
        const Text("What's your email?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        const SizedBox(height: 20,),
        const Text("Don't loose access to your account. verify your email", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
        const SizedBox(height: 20,),
        emailEntry(),
        const SizedBox(height: 20,),
        socialButton()
      ],
    );
  }

  Widget socialButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        PrimaryButton(label: 'Continue', ontap: (){}, hPadding: 25.0,), 
        ElevatedButton.icon(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.google), label: const Text('sign in with google'))
      ],
    );
  }

  emailEntry() {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: 'Enter your email', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)) ),
    );
  }
}