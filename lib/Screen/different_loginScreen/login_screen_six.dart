import 'package:flutter/material.dart';

class LoginScreenSix extends StatefulWidget {
  const LoginScreenSix({super.key});

  @override
  State<LoginScreenSix> createState() => _LoginScreenSixState();
}

class _LoginScreenSixState extends State<LoginScreenSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset('images/Logo.png', height: 34, width: 34),
              Text(
                "Get Started now",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text("Sign Up", style: TextStyle(color: Colors.blueAccent)),
                ],
              ),
              SizedBox(height: 20,),
              Material(borderRadius: BorderRadius.circular(16),
                
                child: Column(children: [
                TextField(decoration: InputDecoration(border: InputBorder.none , prefixIcon: Icon(Icons.email_outlined, color: Colors.blueAccent))),
                Divider(),
                TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.lock_outline, color: Colors.blueAccent,) ,suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.grey,)),
                ),
                
                ])),
            ],
          ),
        ),
      ),
    );
  }
}
