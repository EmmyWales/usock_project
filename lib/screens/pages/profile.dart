import 'package:flutter/material.dart';
import 'package:usock_project/screens/navigate/community.dart';
import 'package:usock_project/screens/navigate/personal_data.dart';
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
        body: SingleChildScrollView(
      child: Padding(
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
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
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
                  title: const Text(
                    'Personal Data',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Color(0XFF395878)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PersonalData()));
                  },
                  leading: Container(
                    height: 30,
                    width: 30,
                    color: const Color.fromARGB(255, 247, 241, 241),
                    child: Icon(
                      Icons.person,
                      color: AppColor.primary,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              ListTile(
                  title: const Text('Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF395878),
                      )),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.settings,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              ListTile(
                  title: const Text('E-Statement',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF395878))),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.description,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              ListTile(
                  title: const Text('Referral Code',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF395878))),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.favorite,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                  title: const Text("FAQS",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF395878))),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.pending,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              ListTile(
                  title: const Text("Our Handbook",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF395878))),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.drive_file_rename_outline,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              ListTile(
                  title: const Text("Community",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF395878))),
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Community()));
                  }),
                  leading: Container(
                      height: 30,
                      width: 30,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Icon(
                        Icons.groups,
                        color: AppColor.primary,
                      )),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  )),
              const SizedBox(
                height: 20,
              ),
              Center(
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 60,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 234, 241),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.headset_mic,
                        color: Color.fromARGB(255, 72, 142, 212),
                      ),
                      Text(
                        " Feel Free to Ask. We are Ready to Help",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 142, 212),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
