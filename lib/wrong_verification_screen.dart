import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/home_page.dart';

class WrongVerificationScreen extends StatefulWidget {
  const WrongVerificationScreen({ Key? key }) : super(key: key);

  @override
  _WrongVerificationScreenState createState() => _WrongVerificationScreenState();
}

class _WrongVerificationScreenState extends State<WrongVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Stack(
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:240,),
                  Container(
                    color: Colors.white,
                    width: 350,
                    height: 300,
                    
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 60),
                        child: Column(
                          children: [
                         
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                                child: Center(
                                    child: Text(
                              'The entered verification code is wrong.\n A new verification code was sent \n to you please fill it',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            )))
                          ],
                        ),
                      ),
                    ),
      
                    
                  ),
                   SizedBox(height: 50,),
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
                ),
                SizedBox(height: 20,),
                 Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(children: [
                      
                      TextSpan(
                          text: 'RESEND AGAIN',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,color: Colors.black45,
                              fontWeight: FontWeight.bold)),
                              

                              
                    ]),
                    
                  ),
                ),
                
                SizedBox(height: 50,),


                  ElevatedButton(
                      onPressed: () {
                      
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
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}