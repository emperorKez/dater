import 'package:dater/app/view/widget/buttons.dart';
import 'package:dater/app/view/widget/header.dart';
import 'package:dater/discover/view/screen/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
  String? phoneNumber;
  String countryName = 'United States';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: const Header(title: 'My Number is'), 
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15), 
        children: [
          const SizedBox(height: 50,), 
          phoneField(),
          const SizedBox(height: 25,), 
          const Text('When you tap Continue, Dater will send a text with verification code. Message and data rate may apply. the verification phone number can beused to log in. Learn what happens when your number changes', textAlign: TextAlign.center, style: TextStyle(fontSize: 12),), 
          const SizedBox(height: 15,), 
          PrimaryButton(label: 'Continue', ontap: () => showModalBottomSheet<void>(context: context, builder: (context) => bottomContainer(),))
        ],
      ),
    ));
  }
  
  Widget bottomContainer() {
    return Container(decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    child: Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        const Text('Continue with', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), 
        const SizedBox(height: 15,),
        Text(phoneNumber ?? ''),
        const SizedBox(height: 15,), 
        PrimaryButton(label: 'Continue', ontap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const DiscoverScreen())))

      ],
    ),
    );
  }

  Widget phoneField() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: IntlPhoneField(
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          filled: true,
          focusColor: Color(0xffe5e5e5),
          border: OutlineInputBorder(),
        ),
        languageCode: "en",
        onChanged: (phone) {
          phoneNumber = phone.completeNumber;
        },
        initialCountryCode: 'US',
        onCountryChanged: (country) {
          countryName = country.name;
        },
      ),
    );
  }
}