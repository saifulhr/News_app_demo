import 'package:flutter/material.dart';
import 'package:news_app/data/country_json.dart';
import 'package:news_app/bottomnav_bar.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search your country',
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.transparent,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: country.length,
              itemBuilder: (context, index) {
                final item = country[index];
                bool isSelected = _selectedIndex == index;
        
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: isSelected ? Colors.blue.shade500 : Colors.transparent,
                    child: Row(
                      children: [
                        Image.asset(
                          '${item['image']}',
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                          color: isSelected ? Colors.black : Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${item['country']}',
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomnavBar()),
                  );
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0, horizontal: 45),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(Color.fromRGBO(131, 172, 253, 1)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
