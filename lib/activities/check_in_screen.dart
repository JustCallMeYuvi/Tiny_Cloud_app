import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/home_page.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  _CheckInScreenState createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  List<String> images = [
    "images/child.png",
    "images/face.jpeg",
    "images/cloud.jpeg",
    "images/child.png",
    "images/child.png",
    "images/sleep.png",
    "images/sleep.png",
  ];

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    bool _isButtonClicked = false;

    int _selectedIndex = 0;

    final List<Widget> _pages = [
      // MyHomePage(),
      // MyProfilePage(),
      // MySettingsPage(),
    ];

    void _onTabTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/path.png'),
                // Opacity(
                //   opacity: 0.5,
                //   child: ClipPath(
                //     clipper: WaveOfCheckInScreen(),
                //     child: Container(
                //       color: Colors.purpleAccent,
                //       height: 250,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Container(
                    height: 100,
                    child: Opacity(
                      opacity: _isButtonClicked ? 0.6 : 1.0,
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.black),
                                borderRadius: BorderRadius.circular(50)),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(images[index]),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isButtonClicked = true;
                        });

                        _scrollController.animateTo(
                          _scrollController.offset +-
                              100, // Adjust the offset to control the scrolling distance
                          curve: Curves.linear, 
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isButtonClicked = true;
                        });
                        _scrollController.animateTo(
                          _scrollController.offset +
                              100, // Adjust the offset to control the scrolling distance
                          curve: Curves.linear,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),

                

                Padding(
                  padding: const EdgeInsets.only(top: 202, left: 60),
                  child: Column(
                    children: [
                      Text(
                        'Sandy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 02,
                      ),
                      Text(
                        '3 Years 5 Month ',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 02,
                      ),
                      Container(
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purpleAccent),
                          child: Center(child: Text('Toddler'))),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          //Padding(padding: EdgeInsets.only(left: 0,)),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Check In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.warning,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Mark Absent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Container(
            //   height: 100,
            //   child: ListView.builder(
            //       // padding: MediaQuery.of(context).padding.copyWith(
            //       //       left: 0,
            //       //       right: 0,
            //       //       bottom: 100,
            //       //       top: 0,
            //       //     ),
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 1,
            //       itemBuilder: (BuildContext, int index) {
            //         return Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(left: 05),
            //               child: GestureDetector(
            //                 onTap: () {},
            //                 child: Container(
            //                   width: 100,
            //                   height: 50,
            //                   padding: EdgeInsets.symmetric(
            //                       horizontal: 20.0, vertical: 10.0),
            //                   decoration: BoxDecoration(
            //                     color: Colors.purple,
            //                     borderRadius: BorderRadius.circular(5.0),
            //                   ),
            //                   child: Center(
            //                     child: Text(
            //                       'Sick',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 16.0,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             GestureDetector(
            //               onTap: () {},
            //               child: Container(
            //                 width: 100,
            //                 height: 50,
            //                 padding: EdgeInsets.symmetric(
            //                     horizontal: 20.0, vertical: 10.0),
            //                 decoration: BoxDecoration(
            //                   color: Colors.cyan,
            //                   borderRadius: BorderRadius.circular(5.0),
            //                 ),
            //                 child: Center(
            //                   child: Text(
            //                     'Vacation',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 15.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             GestureDetector(
            //               onTap: () {},
            //               child: Container(
            //                 width: 100,
            //                 height: 50,
            //                 padding: EdgeInsets.symmetric(
            //                     horizontal: 20.0, vertical: 10.0),
            //                 decoration: BoxDecoration(
            //                   color: Colors.cyan,
            //                   borderRadius: BorderRadius.circular(5.0),
            //                 ),
            //                 child: Center(
            //                   child: Text(
            //                     'Absent',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 16.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             GestureDetector(
            //               onTap: () {},
            //               child: Container(
            //                 width: 100,
            //                 height: 50,
            //                 padding: EdgeInsets.symmetric(
            //                     horizontal: 20.0, vertical: 10.0),
            //                 decoration: BoxDecoration(
            //                   color: Colors.cyan,
            //                   borderRadius: BorderRadius.circular(5.0),
            //                 ),
            //                 child: Center(
            //                   child: Text(
            //                     'Care',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 16.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         );
            //       }),
            // ),

            SingleChildScrollView(
              child: Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 130,
                                    height: 40,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    
                                    child: Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.mood_rounded,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Text(
                                            'Nap',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                // Column(
                                //   children: [
                                 
                                   
                                //   ],
                                // ),
                                const SizedBox(
                                  width: 160,
                                ),
                                 
                                Column(
                                  children: [
                                    Text('09:00 Am',style: TextStyle(),),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.more_horiz)),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'Start Time: 02:00 PM',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'End Time:02:00 PM',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Duration :02:00 PM',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Sanday had a long nap today.',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image(
                              image: AssetImage('images/sleep.png'),
                              height: 200,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              
            ),
            

            const SizedBox(
              height: 7,
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.note_add_sharp),
                  label: 'Activities',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_rounded),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart_sharp),
                  label: 'Billing',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert_sharp),
                  label: 'More',
                ),
              ],
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedFontSize: 14.0,
              unselectedFontSize: 14.0,
              currentIndex: _selectedIndex,
              onTap: _onTabTapped,
              backgroundColor: Colors.white,
              //height: 60.0, // set the height of the BottomNavigationBar
            ),
          ],
        ),
      ),
    );
  }
}
