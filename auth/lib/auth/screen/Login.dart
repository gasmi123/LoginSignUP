import 'package:auth/auth/screen/signupScreen.dart';
import 'package:auth/auth/widget/custombutton.dart';
import 'package:auth/auth/widget/textform.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController username = new TextEditingController();
    TextEditingController password = new TextEditingController();

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Login Page",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "welcome back ! \n in your note Application",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.grey[700]),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 50,
                ),
                child: Column(
                  children: [
                    Text_FormField(
                      valid: (val) {},
                      mycontroller: username,
                      hintext: "entre your username",
                      icon: const Icon(Icons.people_alt_outlined),
                      lable: "username",
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text_FormField(
                      valid: (val) {},
                      mycontroller: password,
                      hintext: "entre your password",
                      icon: const Icon(Icons.email_outlined),
                      lable: "password",
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              CustomButton(
                text: "Login",
                ontap: () {
                  // Login function
                },
                color: Colors.yellow,
                textColor: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => SignUp()),
                (route) => false,
              );
            },
            child: const Text(
              "I dont have a count ! create a count",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
