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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset('images/Logo.png', height: 34, width: 34),
              Text(
                "Sign in your \n   Account",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
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
              SizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(16),

                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Icon(
                            Icons.email_outlined,size: 16,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,size: 16,
                          color: Colors.blueAccent,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Forgot your Password ?",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    side: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
