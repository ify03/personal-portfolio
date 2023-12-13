// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_page/pages/gitprojects.dart';

import 'about.dart';
import 'contact.dart';
import 'homepage.dart';
import 'services.dart';
import 'skills.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          //actions: ,
          title: const Text('Ife\'s Portfolio'),
          backgroundColor: Colors.deepPurple[300],
          // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
              //color: Colors.purple,
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[100],
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: const BorderRadius.only(
                bottomRight:
                    Radius.circular(390.0), // Adjust the radius as needed
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                    ),
                    accountName: Text(
                      'Ifebuche Chukwu',
                      style: GoogleFonts.butterflyKids(
                          fontSize: 40,
                          color: Colors.white60,
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text('blessingifebuche200@gmail.com',
                        style: GoogleFonts.cuteFont(
                          fontSize: 20,
                        )),
                    currentAccountPicture: Center(
                      child: Container(
                        width: 150, // Set the desired width
                        height: 160, //
                        padding: const EdgeInsets.only(bottom: 13),
                        child: const CircleAvatar(
                            backgroundImage: AssetImage('images/CYF_8281.jpg')),
                      ),
                    )),
                ListTile(
                  title: Text(
                    'About Me',
                    style: GoogleFonts.butterflyKids(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.person_2_rounded,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => const AboutPage())));

                    // Handle item 1 tap
                    // Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AboutPage())));
                  },
                ),
                ListTile(
                  title: Text(
                    'Contact Us',
                    style: GoogleFonts.butterflyKids(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Handle item 1 tap
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ContactPage())));
                  },
                ),
                ListTile(
                  title: Text(
                    'Services',
                    style: GoogleFonts.butterflyKids(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.my_library_books_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Handle item 1 tap
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ServicePage())));
                  },
                ),
                ListTile(
                  title: Text(
                    'Skills',
                    style: GoogleFonts.butterflyKids(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.explore_rounded,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Handle item 1 tap
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => SkillsPage())));
                  },
                ),
                ListTile(
                  title: Text(
                    'Projects',
                    style: GoogleFonts.butterflyKids(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.account_balance_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Handle item 1 tap
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => GitScreen())));
                  },
                ),
              ],
            ),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
//08089486606
