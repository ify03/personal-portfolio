import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_page/pages/about.dart';
import 'package:portfolio_page/pages/nav.dart';


// ignore: use_key_in_widget_constructors
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 205, 245),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Contact Us'),
            IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add))
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.mail,
                color: Colors.deepPurpleAccent,
                size: 100,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: blessingifebuche200@.com',
              style: GoogleFonts.adamina(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: +234 808 6038 096',
             style: GoogleFonts.adamina(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
            ),
            //  SocialIcon(icon: null, link: '',),
          // ig,nore: prefer_const_constructors
          const MyHomePage(),
         const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                          icon: FontAwesomeIcons.envelope,
                          link: 'mailto:blessingifebuche200@gmail.com'),
                      SocialIcon(
                          icon: FontAwesomeIcons.linkedin,
                          link: 'https://www.linkedin.com/in/ifebuche-chukwu-11aa83230/'),
                      SocialIcon(
                          icon: FontAwesomeIcons.behance,
                          link: 'https://web.facebook.com/profile.php?id=100081047136483'),
                      SocialIcon(
                          icon: FontAwesomeIcons.github,
                          link: 'https://github.com/ify03'),
                      SocialIcon(
                          icon: FontAwesomeIcons.facebook,
                          link: 'https://web.facebook.com/profile.php?id=100081047136483'),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

