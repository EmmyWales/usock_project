import 'package:flutter/material.dart';
import 'package:usock_project/screens/pages/status.dart';
import 'package:usock_project/utils/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 1000,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(18),
                            image: const DecorationImage(
                                image: AssetImage("assets/man.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "William John Malik",
                              style: TextStyle(
                                  color: AppColor.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Aggressive Investor",
                              style: TextStyle(
                                  color: AppColor.txtblue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                    title: const Text('Personal Data', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF395878)),),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Status()));
                    },
                    leading: Container(
                      color: AppColor.txtblue,
                      child: Icon(
                        Icons.person,
                        color: AppColor.primary,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    )),
                ListTile(
                    title: const Text('Settings', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF395878),)),
                    leading: Container(
                        color: AppColor.txtblue,
                        child: Icon(
                          Icons.settings,
                          color: AppColor.primary,
                          
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    )),
                ListTile(
                    title: const Text('E-Statement',  style: TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF395878))),
                    leading: Container(
                        color: AppColor.txtblue,
                        child: Icon(
                          Icons.file_open,
                          color: AppColor.primary,
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    )),
                ListTile(
                    title: const Text('Referral Code',  style: TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF395878))),
                    leading: Container(
                        color: AppColor.txtblue,
                        child: Icon(
                          Icons.hd,
                          color: AppColor.primary,
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    )),
                ListTile(
                    title: const Text("FAQS",  style: TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF395878))),
                    leading: Container(
                        color: AppColor.txtblue,
                        child: Icon(
                          Icons.person,
                          color: AppColor.primary,
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    )),
                Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 30,
                    width: 600,
                    child: Row(
                      children: const [
                        Text(
                          "Feel free to ask. we are ready to help",
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}