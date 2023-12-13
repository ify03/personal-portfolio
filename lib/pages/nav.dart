import 'package:flutter/material.dart';
import 'package:portfolio_page/pages/homepage.dart';

import 'about.dart';
import 'services.dart';





class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
         
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
                // Handle the action when Home is clicked
                // Replace this with the desired action
                print('Home Clicked');
              },
              child: Text('Home'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the action when About is clicked
                // Replace this with the desired action
                Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AboutPage()),
      );
              },
              child: Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ServicePage()),
      );
                // Handle the action when Services is clicked
                // Replace this with the desired action
                print('Services Clicked');
              },
              child: Text('Services'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Handle the action when Contact is clicked
            //     // Replace this with the desired action
            //     print('Contact Clicked');
            //   },
            //   child: Text('Contact'),
            // ),
          ],
        ),
    
    );
  }
}
