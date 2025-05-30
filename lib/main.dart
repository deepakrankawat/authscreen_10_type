import 'package:authscreen/Screen/bottom_nav_bar.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_five.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_four.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_one.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_three.dart';
import 'package:authscreen/Screen/different_loginScreen/login_screen_two.dart';
import 'package:authscreen/auth.dart';
import 'package:authscreen/provider/navigator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(
    ChangeNotifierProvider(create: (_) => NavigationProvider(), child: 
     MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Auth()
    );
  }
}


