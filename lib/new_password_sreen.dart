import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/account_create_screen.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/otp_send_screen.dart';

class NewPasswordSreen extends StatefulWidget {
  const NewPasswordSreen({Key? key}) : super(key: key);

  @override
  _NewPasswordSreenState createState() => _NewPasswordSreenState();
}

class _NewPasswordSreenState extends State<NewPasswordSreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.purpleAccent,
                height: 250,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Positioned(
                    top: height * .5,
                    left: width * .3,
                    child: Container(
                        height: height * .4,
                        width: width * .4,
                        child: Image.asset('images/splashcloud.png'))),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .4,
                  right: 35,
                  left: 35),
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'FORGET PASSWORD',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter your new password below',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'New Password',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Confirm New Password',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountCreateScreen()),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          Size(160, 40)), // set minimum width and height
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10)), // set padding
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue), // set background color
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10))), // set border radius
                    ),
                    child: Text(
                      'RESET',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
