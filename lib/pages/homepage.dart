


// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_page/pages/contact.dart';
import 'package:portfolio_page/pages/gitprojects.dart';

class HomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

  switch (_selectedIndex) {
    case 0:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
      break;
    case 1:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GitScreen()),
      );
      break;
    case 2:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
      break;
    default:
      // Navigate to default page or perform default action
  }
}


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      
      body: ListView(
        children: [
         
    

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth >= 600 ? 80.0 : 20.0,
              vertical: 40,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text and details on the left
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, I\'m Ife',
                        style: GoogleFonts.adamina(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth >= 600 ? 36 : 24,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Mobile Developer',
                        style: GoogleFonts.bellotaText(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Spacer
                // Image on the right
                Container(
                  width: screenWidth >= 600 ? 200 : 120,
                  height: screenWidth >= 600 ? 200 : 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.5),
                        offset: const Offset(2, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/CYF_8281.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth >= 600 ? 120.0 : 16.0,
            ),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'I\'m a mobile developer passionate about creating beautiful and user-friendly apps. With a touch of creativity and a sprinkle of dedication, I craft delightful app experiences. Let\'s build something amazing together!',
                    style: GoogleFonts.bellotaText(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth >= 600 ? 20 : 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),

        
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              // child: Text(
              //   'Additional Content Here',
              //   style: TextStyle(fontSize: 24),
              // ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
