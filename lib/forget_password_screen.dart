import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/otp_send_screen.dart';

class ForgetPassWordScreen extends StatefulWidget {
  const ForgetPassWordScreen({super.key});

  @override
  State<ForgetPassWordScreen> createState() => _ForgetPassWordScreenState();
}

class _ForgetPassWordScreenState extends State<ForgetPassWordScreen> {
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
                  height: 30,
                ),
                Text(
                  'FORGET PASSWORD',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'We will send a one time OTP on \n your email',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    'Email',
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
                            builder: (context) => OtpSendScreen()),
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
                      'SEND',
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
