import 'package:flutter/material.dart';
import 'package:news_app/authentication/signin_page.dart';
import 'package:news_app/data/setting_json.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: portsetting.length,
                itemBuilder: (context, index) {
                  final item = portsetting[index];
                  return Column(
                    children: [
                      item['text'] == 'Logout'
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SigninPage()));
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    '${item['image']}',
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${item['text']}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            )
                          : Row(
                              children: [
                                Image.asset(
                                  '${item['image']}',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${item['text']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        color: Colors.grey[50],
                      ),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
