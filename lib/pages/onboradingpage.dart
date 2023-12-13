import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_page/pages/drawer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'images/CYF_8281.jpg',
      'description':
          'Take a break, write some code, and do what you can do best.',
    },
    // {
    //   'image': 'images/Snapchat-1605902700_1.jpg',

    //   'description':
    //       'Don\'t be the same,Be Better .',
    // },
    // {
    //   'image': 'images/FB_IMG_16579940183532828.jpg',

    //   'description': 'Take a break, write some code, and do what you can do best.',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPage(
                  image: onboardingData[index]['image']!,
                  description: onboardingData[index]['description']!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingData.length,
              (index) => buildDotIndicator(index),
            ),
          ),
          const SizedBox(height: 40.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DrawerPage(), // Replace with your next screen widget
                  ));
              // Add your button action here
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.transparent, // Transparent background
            ),
            child: Text(
              ' Get Started',
              style: GoogleFonts.aladin(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: _currentPage == index ? 20.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(20.0), // Set your desired border radius
          child: Container(
            height: 300, // Set your desired height
            width: 300, // Set your desired width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), 
                ),
              ],
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.adamina(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
