
import 'package:flutter/material.dart';
import 'package:my_panda_app/constant/color.dart';
import 'package:my_panda_app/constant/constant.dart';
import 'package:my_panda_app/dashboard/welcome.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyColors.navy,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: .2,
          titleTextStyle:TextStyle(fontFamily: Bold, color: Color(0xff323232)),
          iconTheme: IconThemeData(color: MyColors.primaryColor) 
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MyColors.navy,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: .2,
          titleTextStyle: TextStyle(color: MyColors.primaryColor)
        )
      ),
      home: WelcomeScreen(),
    );
  }
}