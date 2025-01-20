import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          appBar: AppBar(
            backgroundColor: Colors.white,
            leadingWidth: 20,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Color.fromRGBO(131, 172, 253, 1),
                size: 20,
              ),
            ),
            title: Row(
              children: [
                Icon(Icons.location_on, color: Colors.black, size: 16),
                SizedBox(width: 2),
                Text(
                  'G.T,Road Kolkata',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            actions: [
              Container(
                height: 33,
                width: 63,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/image.19.png',
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '599',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(131, 172, 253, 1),
                  size: 28,
                ),
              ),
            ],
            bottom: const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorColor: Color.fromRGBO(131, 172, 253, 1),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Politics',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tech',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Health',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Science',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/images.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                        height: 180,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      height: 245,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Who is the best Player off India Cricket Team ?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 27,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 239, 238, 238),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 224, 223, 223),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 199, 199),
                                            width: 1)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Ms Dhoni',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 27,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 239, 238, 238),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 224, 223, 223),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 199, 199),
                                            width: 1)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Virat Kahli',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 27,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 239, 238, 238),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 224, 223, 223),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 199, 199),
                                            width: 1)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Rohit Sharma',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 35)),
                                  backgroundColor: WidgetStateProperty.all(
                                      Color.fromRGBO(131, 172, 253, 1)),
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              child: Text(
                                'Se Result',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Center(child: Text('All Content')),
              const Center(child: Text('Politics Content')),
              const Center(child: Text('Tech Content')),
              const Center(child: Text('Health Content')),
              const Center(child: Text('Science Content')),
            ],
          ),
        ),
      ),
    );
  }
}
