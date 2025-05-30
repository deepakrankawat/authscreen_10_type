import 'package:flutter/material.dart';

class LoginScreenFive extends StatefulWidget {
  const LoginScreenFive({super.key});

  @override
  State<LoginScreenFive> createState() => _LoginScreenFiveState();
}

class _LoginScreenFiveState extends State<LoginScreenFive> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    
     final options = ['Log In', 'Sign Up'];
    return Scaffold( resizeToAvoidBottomInset: false,
    backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 70, left: 20, right: 20),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                
              children: [Image.asset('images/Logo.png'), 
              SizedBox(height: 10,),
              Text(
                      "Get Stated now",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Create an account or log in to explore " )
                   , Text("about our app"),
                   SizedBox(height: 20,),
                   
                   Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFEAEAF2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              // Animated background
              AnimatedAlign(
                alignment: selectedIndex == 0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: Container(
                  width: 150,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                ),
              ),

              // Text buttons
              Row(
                children: List.generate(options.length, (index) {
                  final isSelected = selectedIndex == index;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Center(
                        child: Text(
                          options[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
                
                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Email"),
                   ],
                 ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Password"),
                  ],
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'or login with',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: 
                           
                            
                            Image.asset(
                              'images/Google.png',
                              height: 18,
                              width: 18,
                            
                            )
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: 
                           
                            
                            Image.asset(
                              'images/facebook.png',
                              height: 18,
                              width: 18,
                            
                            )
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: 
                           
                            
                            Image.asset(
                              'images/apple.png',
                              height: 18,
                              width: 18,
                            
                            )
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: 
                           
                            
                            Image.asset(
                              'images/mobile.png',
                              height: 18,
                              width: 18,
                            
                            )
                      ),
                    ),
                    
                  ],
                ),    ]),
          ),
        ),
      ),
    );
  }
}
