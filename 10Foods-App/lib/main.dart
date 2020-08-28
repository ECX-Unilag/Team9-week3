import 'package:flutter/material.dart';
import 'package:delivery_app/Pages/onboardingScreen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "10 Foods",
      theme: ThemeData(
        primaryColor: Color(0xffEA7E00),
      ),
      home: OnboardingScreen(),
    );
  }
}
