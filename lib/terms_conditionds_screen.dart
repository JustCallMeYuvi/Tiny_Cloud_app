import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/otp_send_screen.dart';

class TermsConditiondsScreen extends StatefulWidget {
  const TermsConditiondsScreen({Key? key}) : super(key: key);

  @override
  _TermsConditiondsScreenState createState() => _TermsConditiondsScreenState();
}

class _TermsConditiondsScreenState extends State<TermsConditiondsScreen> {
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: SizedBox(
              width: 350,
              height: 2000,
              child: SingleChildScrollView(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 50),
                    child: Column(
                      children: [
                        Text(
                          'TERMS & CONDITIONS.',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'On this page and in various sections of the website, teacherhorizons.com (“Teacher Horizons website” or “the website”), are set out the terms and conditions (“Terms”) on which you may access and make use of our website. These Terms constitute a binding legal agreement between you, as a user (whether or not you are a Registered User, as defined below), and Teacher Horizons Ltd, a company registered in England and Wales with company number 7544936 (“Teacher Horizons” or “us”).',
                          style: TextStyle(fontSize: 16),
                        ),SizedBox(height: 05,),
                        Text(
                          'Please read these Terms carefully before you start to use the Teacher Horizons website. By using the Teacher Horizons website, you indicate that you accept these Terms and that you agree to abide by them. If you do not agree to these Terms, please refrain from using the Teacher Horizons website. You warrant that you have the right, authority and capacity to enter into and be bound by these Terms and that by using the Teacher Horizons website you will not be violating any law or regulation of the country in which you are resident. You are solely responsible for your compliance with all applicable local laws and regulations.',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
