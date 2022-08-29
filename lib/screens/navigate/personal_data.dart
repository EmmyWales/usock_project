import 'package:flutter/material.dart';
import 'package:usock_project/screens/homepage.dart';
import 'package:usock_project/utils/colors.dart';
import 'dart:async';

class PersonalData extends StatefulWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _dob = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _job = TextEditingController();
  String dropdownValue = "\$500 - \$3000 /year";
  var items = [
    "\$500 - \$3000 /year",
    "\$3500 - \$6000 /year",
    "\$6500 - \$9000 /year",
    "\$9500 - above /year",
  ];
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dob.text = "${picked.day}-${picked.month}-${picked.year}".toString();
      });
    }
  }

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
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomePage()));
          },
        ),
        title: Center(
          child: Text(
            "Personal Data",
            style: TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/man.jpeg")),
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your Name",
                  style: TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Enter full name.";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 220, 234, 241),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                  ),
                  style: const TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _dob,
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 220, 234, 241),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Your Job",
                  style: TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _job,
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.length < 4) {
                      return "Enter your job.";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: "",
                    hintText: "",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 220, 234, 241),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))),
                  ),
                  style: const TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Monthly Income",
                  style: TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: const TextStyle(color: Color(0XFF395878)),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFFB4C1CC))), enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFFB4C1CC))), ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Gender",
                  style: TextStyle(
                    color: Color(0XFF395878),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      color: const Color.fromARGB(255, 220, 234, 241),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                              child: Text(
                            "Male",
                            style: TextStyle(
                              color: Color(0XFF395878),
                            ),
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: const Color.fromARGB(255, 220, 234, 241),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: Center(
                                child: Text(
                              "  Female",
                              style: TextStyle(
                                color: Color(0XFF395878),
                              ),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _name = TextEditingController();
    _job = TextEditingController();
    _dob = TextEditingController();

    super.initState();
  }
}
