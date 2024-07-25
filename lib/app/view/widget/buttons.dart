import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.label, required this.ontap, this.hPadding = 10, this.vPadding = 10, super.key});
  final String label;
  final void Function()? ontap;
  final double? hPadding;
  final double? vPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ontap,
    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), padding: EdgeInsets.symmetric(horizontal: hPadding!, vertical: vPadding!)),
     child: Text(label));
  }
}