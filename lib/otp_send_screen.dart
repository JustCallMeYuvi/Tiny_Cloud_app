import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/new_password_sreen.dart';

class OtpSendScreen extends StatefulWidget {
  const OtpSendScreen({super.key});

  @override
  State<OtpSendScreen> createState() => _OtpSendScreenState();
}

class _OtpSendScreenState extends State<OtpSendScreen> {
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
                  'An OTP was sent to your email',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
             
              
                TextField(
                  decoration: InputDecoration(
                   hintText: '                                   _ _ _ _       ',
                   alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'Did not receive the verification ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                              )),
                      TextSpan(
                          text: 'OTP?',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,color: Colors.black45,
                              fontWeight: FontWeight.bold)),

                              
                    ]),
                  ),
                ),SizedBox(height: 10,),
                 Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'Resend OTP in 00:59',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                              )),
                  

                              
                    ]),
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewPasswordSreen()),
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
                      'VERIFY',
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