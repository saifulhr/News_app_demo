import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _selectperson = 'Media Reporter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(131, 172, 253, 1),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 225, 225),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Change Profile Photo',
                    style: TextStyle(
                      color: Color.fromRGBO(131, 172, 253, 1),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      hintText: 'Last Name',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      hintText: 'Email id',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      hintText: 'Change Password',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'I am a',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectperson = 'Media Reporter';
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _selectperson == 'Media Reporter'
                                  ? Colors.white
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            child: _selectperson == 'Media Reporter'
                                ? Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                    size: 15,
                                  )
                                : Container(),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Media Reporter',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectperson = 'Visitor';
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _selectperson == 'Visitor'
                                  ? Colors.white
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            child: _selectperson == 'Visitor'
                                ? Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                    size: 15,
                                  )
                                : Container(),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Visitor',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Upload Media Document',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 0, horizontal: 15)),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                                color: Color.fromRGBO(131, 172, 253, 1),
                                width: 1)))),
                    child: Text(
                      'Browse File',
                      style: TextStyle(
                          color: Color.fromRGBO(131, 172, 253, 1),
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
