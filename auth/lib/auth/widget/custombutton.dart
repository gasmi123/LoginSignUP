import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  final Color color;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: ontap,
          color: color,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text,
            style: TextStyle(
              height: 2,
              fontSize: 20,
              color: textColor,
            ),
          )),
    );
  }
}
