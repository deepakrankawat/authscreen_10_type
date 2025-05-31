import 'package:flutter/material.dart';

class LoginScreenSeven extends StatefulWidget {
  const LoginScreenSeven({super.key});

  @override
  State<LoginScreenSeven> createState() => _LoginScreenSevenState();
}

class _LoginScreenSevenState extends State<LoginScreenSeven> {
    int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
     final options = ['Log In', 'Sign Up'];
    return Scaffold( resizeToAvoidBottomInset: false, backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
             
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height /1.460123,
                  decoration: BoxDecoration(  color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , topRight: Radius.circular(16)
                  )),
                         
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 65, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('images/Logo.png', height: 18.36, width: 18.36),
                    SizedBox(width: 10),
                    Text(
                      "Logoipsum",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Get Started now",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
               
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Create an account or log in to explore about our app",
                      style: TextStyle(color: Colors.white),
                    ),
                   
                  ],
                ),
                SizedBox(height: 70,),
Center(
  child: Container(
            width: 327,
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
),
                SizedBox(height: 20),
                Text("Email"),
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
                Text("Password"),
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
                      width: 156,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'images/Google.png',
                              height: 18,
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: 156,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'images/facebook.png',
                              height: 18,
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 75),

              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
