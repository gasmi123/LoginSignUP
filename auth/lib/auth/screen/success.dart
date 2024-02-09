import 'package:auth/auth/screen/Login.dart';
import 'package:auth/auth/widget/custombutton.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/tick.png"),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Go To Login",
                ontap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (route) => false,
                  );
                },
                color: Colors.yellow,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
