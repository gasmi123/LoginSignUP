import 'package:flutter/material.dart';

class Text_FormField extends StatelessWidget {
  final String lable;
  final String hintext;
  final Icon icon;
  final bool obscureText;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  const Text_FormField({
    super.key,
    required this.lable,
    required this.hintext,
    required this.icon,
    required this.obscureText,
    required this.mycontroller,
    required this.valid,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      obscureText: obscureText,
      controller: mycontroller,
      decoration: InputDecoration(
          // focusColor: Colors.yellow,
          suffixIcon: icon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(lable),
          hintText: hintext,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
