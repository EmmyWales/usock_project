import 'package:flutter/material.dart';
import 'package:usock_project/screens/homepage.dart';
import 'package:usock_project/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
        title: "ustock",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: AppColor.primary),
          ),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: AppColor.primary,
          backgroundColor: Colors.white,
          
        ));
  }
}
