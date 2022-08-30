import 'package:flutter/material.dart';
import 'package:usock_project/screens/homepage.dart';

import '../../utils/colors.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: AppColor.primary,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0XFF395878),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
            ),
            title: Center(
              child: Text(
                "Community",
                style: TextStyle(
                  color: AppColor.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "    Learn Stock,\nEducate the world",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primary),
                )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.txtblue,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      color: const Color(0XFFB4C1CC)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.search,
                        color: Color(0XFF395878),
                      ),
                      Text(
                        " Search something...",
                        style: TextStyle(color: Color(0XFF395878)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 1000,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFB4C1CC),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: const Color(0XFFB4C1CC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "How to Start Investing in uStock",
                          style: TextStyle(
                              color: Color(0XFF395878),
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Lemme tell you this, world of investing is really\nreally legit,especially using uStock. Why? Becaus...",
                          style: TextStyle(
                            color: Color(0XFF395878),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/oman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/pman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/wman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 167, 167),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Row(
                                children: const [
                                  Text(
                                    " + 69 ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 152, 147, 147),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text("Join Forum"),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 1000,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFB4C1CC),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: const Color(0XFFB4C1CC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "How to Predict the Candlestick",
                          style: TextStyle(
                              color: Color(0XFF395878),
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "What is candlestick? It's like candle but not\nactually sweet candle.It's some benchmark to yo...",
                          style: TextStyle(
                            color: Color(0XFF395878),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/wman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/oman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/pman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 167, 167),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Row(
                                children: const [
                                  Text(
                                    " + 69 ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 152, 147, 147),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text("Join Forum"),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 1000,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFB4C1CC),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: const Color(0XFFB4C1CC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Is Trading Save for Newbie Investor?",
                          style: TextStyle(
                              color: Color(0XFF395878),
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Many people ask us about trading in uStock, is\ntrading safefor you if you're newbie player in uSt...",
                          style: TextStyle(
                            color: Color(0XFF395878),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/pman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/oman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/wman.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 167, 167),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Row(
                                children: const [
                                  Text(
                                    " + 69 ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 152, 147, 147),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text("Join Forum"),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
