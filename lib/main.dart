import 'package:flutter/material.dart';
import 'package:portfolio_page/pages/onboradingpage.dart';


void main() => runApp(const MyPortfolio());

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const OnboardingScreen());
  }
}
