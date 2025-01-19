import 'package:flutter/material.dart';
import 'package:news_app/authentication/forgot_reenter.dart';

class ForgotpasPage extends StatefulWidget {
  const ForgotpasPage({super.key});

  @override
  State<ForgotpasPage> createState() => _ForgotpasPageState();
}

class _ForgotpasPageState extends State<ForgotpasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      color: Color.fromARGB(192, 91, 142, 245),
                      fontSize: 28,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'Watch',
                  style: TextStyle(
                    color: Color(0xff272932),
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Padding(padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Verification code',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotReenter()));
                    },
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(vertical: 0, horizontal: 45)),
                        backgroundColor: WidgetStateProperty.all(
                            Color.fromRGBO(131, 172, 253, 1)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
            ],
          ),
          )
        ],
      ),
    );
  }
}