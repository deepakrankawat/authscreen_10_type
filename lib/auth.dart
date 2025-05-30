import 'package:authscreen/Screen/different_loginScreen/login_screen_five.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_four.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_one.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_six.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_three.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_two.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Titles for grid items
    final List<String> titles = List.generate(10, (index) => "Screen ${index + 1}");

    // List of screen widgets
    final List<Widget> screens = [
     LoginScreenOne(),
     LoginScreenTwo(),
     LoginScreenThree(),
     LoginScreenFour(),
     LoginScreenFive(),
     LoginScreenSix()
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Navigation"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: titles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screens[index]),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
                child: Center(
                  child: Text(
                    titles[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}