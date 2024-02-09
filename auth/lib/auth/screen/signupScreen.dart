import 'package:auth/Component/validatore..dart';
import 'package:auth/auth/screen/Login.dart';
import 'package:auth/auth/screen/success.dart';
import 'package:auth/auth/widget/custombutton.dart';
import 'package:auth/auth/widget/textform.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey();
    TextEditingController username = new TextEditingController();
    TextEditingController email = new TextEditingController();
    TextEditingController passworde = new TextEditingController();

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "SignUP Page",
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
            "welcome to your note app",
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
                child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      Text_FormField(
                        valid: (val) {
                          return valdatinput(val!, 6, 20);
                        },
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
                        valid: (val) {
                          return valdatinput(val!, 6, 20);
                        },
                        mycontroller: email,
                        hintext: "entre your email",
                        icon: const Icon(Icons.email_outlined),
                        lable: "email",
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text_FormField(
                        valid: (val) {
                          return valdatinput(val!, 6, 20);
                        },
                        mycontroller: passworde,
                        hintext: "entre your password",
                        icon: const Icon(Icons.password_outlined),
                        lable: "username",
                        obscureText: false,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: "signUP",
                ontap: () async {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Success()),
                    (route) => false,
                  );
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
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
            },
            child: const Text(
              "I have a count ! Login",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
