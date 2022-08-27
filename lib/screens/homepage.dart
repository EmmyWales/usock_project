import 'package:flutter/material.dart';
import 'package:usock_project/screens/pages/home.dart';
import 'package:usock_project/screens/pages/message.dart';
import 'package:usock_project/screens/pages/profile.dart';
import 'package:usock_project/screens/pages/status.dart';
import 'package:usock_project/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 3;
  List<Widget> screens = [
    const MyHome(),
    const Status(),
    const Messages(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          fixedColor: AppColor.primary,
          type: BottomNavigationBarType.fixed,
          onTap: (value) => setState(() => currentIndex = value),
          selectedIconTheme: IconThemeData(color: AppColor.primary),
          selectedLabelStyle: TextStyle(color: AppColor.primary),
          unselectedLabelStyle: TextStyle(color: AppColor.txtblue),
          unselectedItemColor: AppColor.txtblue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart_rounded), label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail), label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ''
            ),
          ],
        ),
      ),
    );
  }
}
