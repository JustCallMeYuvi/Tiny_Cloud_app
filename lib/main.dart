import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/account_create_screen.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/new_password_sreen.dart';
import 'package:tiny_cloud_app/otp_send_screen.dart';
import 'package:tiny_cloud_app/privacy_policy.dart';
import 'package:tiny_cloud_app/splash_screen.dart';
import 'package:tiny_cloud_app/terms_conditionds_screen.dart';
import 'package:tiny_cloud_app/verification_code.dart';
import 'package:tiny_cloud_app/wrong_verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  TermsConditiondsScreen(),
    );
  }
}

